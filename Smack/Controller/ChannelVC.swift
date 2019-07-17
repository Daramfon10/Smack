//
//  ChannelVC.swift
//  Smack
//
//  Created by Daramfon Akpan on 7/14/19.
//  Copyright © 2019 Daramfon Akpan. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    @IBOutlet weak var loginBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController()?.rearViewRevealWidth = self.view.frame.width - 60
      
    }
  
    @IBAction func loginBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    
    @IBAction func prepareForUnwind(segue:UIStoryboardSegue){
        
    }
    


}
