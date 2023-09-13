//
//  SignUpViewController.swift
//  FinalProject_2132687
//
//  Created by english on 2023-04-03.
//

import UIKit

class SignUpViewController: UIViewController {

    
    
    @IBOutlet weak var txtFullname: UITextField!
    
    @IBOutlet weak var txtUsername: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    

    @IBOutlet weak var btnEye: UIButton!
    
    
    
    @IBAction func btnEyeTouchUpInside(_ sender: Any) {
        if txtPassword.isSecureTextEntry{
            txtPassword.isSecureTextEntry = false
            btnEye.setImage(UIImage(systemName: "eye-slash"), for: .normal)
        }
        else{
            txtPassword.isSecureTextEntry = true
            btnEye.setImage(UIImage(systemName: "eye"), for: .normal)
        }
    
    }
    
        
    
    
    
    @IBAction func btnSIgnupTouchUpInside(_ sender: Any) {
        
        if txtUsername.text!.isEmpty{
            Toast.ok(view: self, title: "Something is wrong", message: "Please enter a valid username", handler: nil)
            return
        }
        if txtPassword.text!.isEmpty{
            Toast.ok(view: self, title: "Something is wrong", message: "Please enter a Password", handler: nil)
            return
        }
        if txtFullname.text!.isEmpty{
            Toast.ok(view: self, title: "Something is wrong", message: "Please enter a valid username", handler: nil)
            return
        }
        
        // check if username exist
        if UserModel.find(username: txtUsername.text!.lowercased()) != nil{
            Toast.ok(view: self, title: "Username already exists", message: "The username \(String(describing: txtUsername.text) ) already assigned", handler: nil)
            return
        }
        
        // save the user
        let user = UserModel(name: txtFullname.text!, username: txtUsername.text!, password: txtPassword.text!)
        UserModelProvider.insert(newUser: user)
        
        // return to viewcontroller]
        navigationController?.popViewController(animated: true)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

   

}
