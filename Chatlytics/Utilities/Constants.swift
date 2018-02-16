//
//  Constants.swift
//  Chatlytics
//
//  Created by Matthew Byrne on 2/13/18.
//  Copyright © 2018 Matthew Byrne. All rights reserved.
//

import Foundation

// typealias is just renaming a Type, saying completion handler is of this type
// what this type is: closure type that can let us see if web request is successful or not
typealias CompletionHandler = (_ Success: Bool) -> ()

// URL Constants
let BASE_URL = "https://chatlyticsdev.herokuapp.com/v1/" // got this from Heroku
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"
let URL_USER_ADD = "\(BASE_URL)user/add"


// Segues

let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"


// User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"


// Headers
let HEADER = [
    "Content-Type": "application/json; charset=utf-8"
]
