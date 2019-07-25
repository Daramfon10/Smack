//
//  Constants .swift
//  Smack
//
//  Created by Daramfon Akpan on 7/16/19.
//  Copyright © 2019 Daramfon Akpan. All rights reserved.
//

import Foundation

//this is making completionHandler a closure of type bool which then enables you to make checks inside 
typealias CompletionHandler = (_ Success: Bool) -> ()

//Example: typealias Johnny = String
// let name: Johnny = "Johnny"
//segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"

//User Defaults

let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

//url Constants

let BASE_URL = "https://darachatty.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"

//
let HEADER = ["Content-Type":"application/json; charset = utf-8"]
