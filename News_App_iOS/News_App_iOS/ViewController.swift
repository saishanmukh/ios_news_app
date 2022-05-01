//
//  ViewController.swift
//  News_App_iOS
//
//  Created by Nagarushyanth Tummala on 4/4/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginId: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    var login = users
    
    @IBAction func loginButtonAction(_ sender: Any) {
        var id = loginId.text
        var pass = password.text
        for user in login
        {
            if (id == user.username && pass == user.password)
            {
                loginId.text = ""
                password.text = ""
                
            }
//            else
//            {
//                loginId.text = ""
//                password.text = ""
//                statusLabel.text = "Invalid Username and Password"
//            }
        }
    }
    
    @IBAction func signupButtonAction(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }
    
    
    @IBOutlet weak var headlinesOutlet: UIButton!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let transition = segue.identifier
            if transition == "headlineView"{
                let destination = segue.destination as! HeadlinesViewController
            }
            
            
        }
}

