//
//  SignUpVC.swift
//  Smack
//
//  Created by Daramfon Akpan on 7/17/19.
//  Copyright © 2019 Daramfon Akpan. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController {
    
    @IBOutlet weak var userNameTxt: loginTextFields!
    @IBOutlet weak var emailTxt: loginTextFields!
    @IBOutlet weak var passwordTxt: loginTextFields!
    @IBOutlet weak var userImg: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func closeBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    @IBAction func createAccountPressed(_ sender: Any) {
        guard let email = emailTxt.text, emailTxt.text != "" else{return}
        guard let pass = passwordTxt.text , passwordTxt.text != "" else{return}
        
        AuthService.instance.registerUser(email: email, password: pass) { (success) in
            if success{
                AuthService.instance.login(email: email, password: pass, completion: { (success) in
                    if success{
                        print("logged in user!",AuthService.instance.authToken)
                    }
                })
                
            }
        }
    }
    
    @IBAction func chooseAvatarPressed(_ sender: Any) {
    }
    @IBAction func generateBgcPressed(_ sender: Any) {
    }
    
    



}
