//
//  SignUpVC.swift
//  Smack
//
//  Created by Daramfon Akpan on 7/17/19.
//  Copyright © 2019 Daramfon Akpan. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func closeBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    



}
