//
//  RegisterViewController.swift
//  News_App_iOS
//
//  Created by student on 4/5/22.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    
    @IBOutlet weak var lastName: UITextField!
    
    @IBOutlet weak var emailId: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var confirmPassword: UITextField!
    
    
    @IBAction func registerButtonAction(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        var fname = firstName.text
        var lname = lastName.text
        var email = emailId.text
        var pwd = password.text
        var cfmpwd = confirmPassword.text
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
}
