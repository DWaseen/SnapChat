//
//  SignInViewController.swift
//  SnapChat
//
//  Created by Dan Waseen on 12/30/16.
//  Copyright © 2016 RevWon. All rights reserved.
//

import UIKit

import FirebaseAuth
import FirebaseDatabase

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
                
                FIRAuth.auth()?.createUser(withEmail: self.emailTextField.text!, password: self.passwordTextField.text!, completion: { (user, error) in
                    print("Tried to create user")
                    if error != nil {
                        print("we have error: \(error)")
                    }
                    else {
                        print("Created user succesfully")
                        
                        
                        FIRDatabase.database().reference().child("users").child(user!.uid).child("email").setValue(user!.email!)
                        
                        self.performSegue(withIdentifier: "signinsegue", sender: nil)
                    }
                })
            }
            else {
                print("Signed in successfully")
                self.performSegue(withIdentifier: "signinsegue", sender: nil)
            }
        })
        
    }
    
    
}

