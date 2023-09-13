//
//  ViewController.swift
//  FinalProject_2132687
//
//  Created by english on 2023-04-03.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var txtUsername: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    private var loggedUser : UserModel?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Do any additional setup after loading the view.
        UserModelProvider.mockData()
        
    }
    
    
    
    @IBAction func btnLogin(_ sender: Any) {
        
    }
    
    
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == Segue.toCookBookViewController{
            guard let username = txtUsername.text, let password = txtPassword.text else{
                
                print("invald username or password")
                return false
            }
            
            if let user = UserModel.find(username: username) {
                if user.password == password {
                    self.loggedUser = user
                    return true
                }
                else{
                    print("invalid password")
                    return false
                }
            }
            else{
                print("username not found")
                return false
            }
        }
        else{ // sign up
            return true
        }
    }

    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Segue.toCookBookViewController{
           let cookBookViewController = segue.destination as! CookBookViewController
            
            cookBookViewController.loggedUser = self.loggedUser
        }
    }
    */
     
}
