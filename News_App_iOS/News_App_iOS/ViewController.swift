//
//  ViewController.swift
//  News_App_iOS
//
//  Created by Nagarushyanth Tummala on 4/4/22.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var loginId: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBAction func loginButtonAction(_ sender: Any) {

        var ref: DatabaseReference!
        ref = Database.database().reference()
        ref.child("users").getData(completion:  { error, snapshot in
          guard error == nil else {
              print(error!.localizedDescription)
            return;
          }
          let userName = snapshot.value! as? NSDictionary

        let _users = userName!.allKeys as NSArray

        if _users.contains(self.loginId.text!)
        {
            
            let userObj = userName?[self.loginId.text!] as? NSDictionary
            let pwd = userObj?["Password"] as? String

            if pwd! == self.password.text!
            {
                self.loginId.text = ""
                self.password.text = ""
                self.loginId.becomeFirstResponder()
                let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

                self.navigationController?.navigationBar.isHidden = true
                let objSomeViewController = storyBoard.instantiateViewController(withIdentifier: "HomeTabBar") as! UITabBarController
                self.navigationController?.pushViewController(objSomeViewController, animated: true)
                
            }
            else
            {
                self.statusLabel.isHidden = false
                self.statusLabel.text = "Invalid Password."
                self.loginId.text = ""
                self.password.text = ""
                
            }
            
        }
        else
        {
            self.statusLabel.isHidden = false
            self.statusLabel.text = "Invalid Username."
            self.loginId.text = ""
            self.password.text = ""
            
        }

        });
    }
    
    @IBAction func signupButtonAction(_ sender: Any) {
    }
    
    override func viewDidLoad() {
      super.viewDidLoad()
        statusLabel.isHidden = false

    }
    
    var users = NSDictionary()

}

