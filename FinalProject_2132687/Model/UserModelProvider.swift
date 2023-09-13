//
//  UserModelProvider.swift
//  FinalProject_2132687
//
//  Created by english on 2023-04-13.
//

import Foundation


class UserModelProvider{
    // select * from ...
    static var all : [UserModel] = []
    
    // insert into ....
    static func insert(newUser : UserModel){
        newUser.id = UserModel.getNextId()
        
        all.append(newUser)
    }
    
    // update
    static func update ( user : UserModel ) -> Bool {
        for (index, currentUser) in all.enumerated(){
            if currentUser.id == user.id {
                all[index] = user // updating
                return true
            }
        }
        return false
    }
    
    // delete
    static func delete ( user : UserModel ) -> Bool {
        for (index, currentUser) in all.enumerated(){
            if currentUser.id == user.id {
                all.remove(at: index) // removing at index a
                return true
            }
        }
        return false
    }
    
    static func mockData(){
        let admin = UserModel(name: "System administration", username: "sysadm", password: "admin")
        insert(newUser: admin)

        let user = UserModel(name: "John Doe", username: "johndoe", password: "helloworld")
        insert(newUser: user)
        
        /*
        for userIndex in (1...100){
            let newUser = UserModel(name: "User \(userIndex)", username: "user\(userIndex)", password: "user\(userIndex)")
            insert(newUser: newUser)
        }
         */
        
        }
    
}
