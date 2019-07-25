//
//  RoundedButton.swift
//  Smack
//
//  Created by Daramfon Akpan on 7/24/19.
//  Copyright © 2019 Daramfon Akpan. All rights reserved.
//

import UIKit
@IBDesignable
class RoundedButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 5.0 {
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupView()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setupView()
    }
    func setupView(){
        self.layer.cornerRadius = cornerRadius
    }
}
