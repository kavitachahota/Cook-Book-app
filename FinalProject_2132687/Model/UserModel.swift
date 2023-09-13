//
//  UserModel.swift
//  FinalProject_2132687
//
//  Created by english on 2023-04-13.
//

import Foundation


class UserModel{
    
    static var idGenerator : Int = 0
    
    public var id : Int = 0 // 0 = new user
    
    public var name : String?
    public var username : String?
    public var password : String?
    
    // constructor
    init(name : String, username : String, password : String) {
        self.name = name
        self.username = username
        self.password = password
    }
    
    static func getNextId() -> Int {
        idGenerator += 1
        return idGenerator
    }
    
    static func find(username : String) -> UserModel? {
        for user in UserModelProvider.all{
            if user.username!.lowercased() == username.lowercased(){ // issue
                return user
            }
        }
        return nil
    }
    
}
