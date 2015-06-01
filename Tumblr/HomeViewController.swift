
//
//  HomeViewController.swift
//  Tumblr
//
//  Created by Cece Yu on 5/30/15.
//  Copyright (c) 2015 Cece Yu. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    var loginViewController: UIViewController!
    
    @IBOutlet weak var homeSpin: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

            UIView.animateWithDuration(8, animations: { () -> Void in
                self.homeSpin.transform = CGAffineTransformMakeDegreeRotation(CGFloat(M_PI * 60))
            })
    
        var storyboard = UIStoryboard(name: "Main", bundle: nil)
        loginViewController = storyboard.instantiateViewControllerWithIdentifier("LoginViewController") as! UIViewController!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onLoginTap(sender: AnyObject) {
        addChildViewController(loginViewController)
        loginViewController.view.frame = view.bounds
        view.addSubview(loginViewController.view)
        
        loginViewController.view.alpha = 0
                UIView.animateWithDuration(0.35, animations: { () -> Void in
                    self.loginViewController.view.alpha = 1
                }) { (Bool) -> Void in
        self.loginViewController.didMoveToParentViewController(self)
                }
    }


}
