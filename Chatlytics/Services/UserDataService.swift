//
//  UserDataService.swift
//  Chatlytics
//
//  Created by Matthew Byrne on 2/16/18.
//  Copyright © 2018 Matthew Byrne. All rights reserved.
//

import Foundation

class UserDataService {
    
    static let instance = UserDataService()
    
    // create variables that are public to GET (other classes) but private to SET (only this file)
    public private(set) var id = ""
    public private(set) var avatarColor = ""
    public private(set) var avatarName = ""
    public private(set) var email = ""
    public private(set) var name = ""
    
    func setUserData(id: String, color: String, avatarName: String, email: String, name: String) {
        self.id = id
        self.avatarColor = color
        self.avatarName = avatarName
        self.email = email
        self.name = name
    }
    
    func setAvatarName(avatarName: String) {
        self.avatarName = avatarName
    }
    
}
