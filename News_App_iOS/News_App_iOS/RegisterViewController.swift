//
//  RegisterViewController.swift
//  News_App_iOS
//
//  Created by student on 4/5/22.
//

import UIKit
import Firebase
import FirebaseAnalytics
import FirebaseStorage

class RegisterViewController: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    
    @IBOutlet weak var lastName: UITextField!
    
    @IBOutlet weak var emailId: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var confirmPassword: UITextField!
    var ref: DatabaseReference!
    
    @IBAction func registerButtonAction(_ sender: Any) {
        let userdata = ["FirstName": self.firstName.text! as String,
                        "LastName": self.lastName.text! as String,
                        "Email": self.emailId.text! as String,
                        "Password": self.password.text! as String]
        let uid = self.emailId.text!.components(separatedBy: CharacterSet(charactersIn: "@")).first

        self.ref.child("users").child(uid!).setValue(userdata)
        print("Successful")
        
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ref = Database.database().reference()

    }

}
