//
//  RegisterViewController.swift
//  LetsChat
//
//  Created by Nuhu Sulemana on 16/02/2024.
//

import UIKit
import FirebaseCore
import FirebaseAuth

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        if let email = emailTextfield.text,
           let password = passwordTextfield.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e)
                } else {
                    // Navigate to ChatViewController
                    self.performSegue(withIdentifier: K.registerSegue, sender: self)
                }
          
            }
        }
    }
}
