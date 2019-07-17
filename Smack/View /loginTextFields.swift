//
//  loginTextFields.swift
//  Smack
//
//  Created by Daramfon Akpan on 7/16/19.
//  Copyright © 2019 Daramfon Akpan. All rights reserved.
//

import UIKit
@IBDesignable

class loginTextFields: UITextField {

    override func prepareForInterfaceBuilder() {
        customize()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        customize()
    }

    func customize(){
        if let p = placeholder{
            textColor = #colorLiteral(red: 0.2588235294, green: 0.3294117647, blue: 0.7254901961, alpha: 1)
            let place = NSAttributedString(string: p, attributes: [NSAttributedString.Key.foregroundColor: textColor as Any])
            attributedPlaceholder = place
            
            
        }
    }
}
