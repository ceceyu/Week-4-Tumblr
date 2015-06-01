//
//  LoginViewController.swift
//  Tumblr
//
//  Created by Cece Yu on 5/31/15.
//  Copyright (c) 2015 Cece Yu. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var formView: UIView!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        formView.layer.cornerRadius = 8
        
        if emailField.text.isEmpty || passwordField.text.isEmpty {
            loginButton.enabled = false
        }
    
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onCancel(sender: AnyObject) {
        UIView.animateWithDuration(0.3, animations: { () -> Void in
            self.view.alpha = 0
            }) { (Bool) -> Void in
                self.view.removeFromSuperview()
        }
    }

}
