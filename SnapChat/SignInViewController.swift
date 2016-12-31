//
//  SignInViewController.swift
//  SnapChat
//
//  Created by Dan Waseen on 12/30/16.
//  Copyright © 2016 RevWon. All rights reserved.
//

import UIKit

import FirebaseAuth

class SignInViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func turnUpTapped(_ sender: Any) {

    FIRAuth.auth()?.signIn(withEmail: emailTextField.text!, password: passwordTextField.text!, completion: { (user, error) in
        
        print("We tried to sign in")
        if error != nil {
            print("Have Error Number : \(error)")
        }
        else {
            print("Signed in successfully")
        }
    })
    
    }


}

