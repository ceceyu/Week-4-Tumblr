
//
//  ComposeViewController.swift
//  Tumblr
//
//  Created by Cece Yu on 5/30/15.
//  Copyright (c) 2015 Cece Yu. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet weak var textIconView: UIImageView!
    @IBOutlet weak var photoIconView: UIImageView!
    @IBOutlet weak var quoteIconView: UIImageView!
    @IBOutlet weak var linkIconView: UIImageView!
    @IBOutlet weak var chatIconView: UIImageView!
    @IBOutlet weak var videoIconView: UIImageView!
    @IBOutlet weak var nevermindButton: UIButton!
    
    //Default location of icons
    let textIconLocation = CGPoint(x: 53.5, y: 170.5)
    let photoIconLocation = CGPoint(x: 160.5, y: 170.5)
    let quoteIconLocation = CGPoint(x: 266.5, y: 170.5)
    let linkIconLocation = CGPoint(x: 53.5, y: 306.5)
    let chatIconLocation = CGPoint(x: 160.5, y: 306.5)
    let videoIconLocation = CGPoint(x: 266.5, y: 306.5)
    
    //Original offscreen location of icons
    let textIconOLocation = CGPoint(x: 53.5, y: 600)
    let photoIconOLocation = CGPoint(x: 160.5, y: 600)
    let quoteIconOLocation = CGPoint(x: 266.5, y: 600)
    let linkIconOLocation = CGPoint(x: 53.5, y: 600)
    let chatIconOLocation = CGPoint(x: 160.5, y: 600)
    let videoIconOLocation = CGPoint(x: 266.5, y: 600)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func didMoveToParentViewController(parent: UIViewController?) {
        super.didMoveToParentViewController(parent)
        
        textIconView.alpha = 0
        photoIconView.alpha = 0
        quoteIconView.alpha = 0
        linkIconView.alpha = 0
        chatIconView.alpha = 0
        videoIconView.alpha = 0
        nevermindButton.alpha = 0
        
        let options = UIViewAnimationOptions.CurveEaseInOut
        
        UIView.animateWithDuration(0.5, delay: 0, options: options, animations: { () -> Void in
            self.photoIconView.alpha = 1
            self.photoIconView.center = self.photoIconLocation
            self.nevermindButton.alpha = 1
        }, completion: nil)
        
        UIView.animateWithDuration(0.6, delay: 0, options: options, animations: { () -> Void in
            self.chatIconView.alpha = 1
            self.chatIconView.center = self.chatIconLocation
            }, completion: nil)
        
        UIView.animateWithDuration(0.7, delay: 0, options: options, animations: { () -> Void in
            self.quoteIconView.alpha = 1
            self.quoteIconView.center = self.quoteIconLocation
            }, completion: nil)
        
        UIView.animateWithDuration(0.8, delay: 0, options: options, animations: { () -> Void in
            self.textIconView.alpha = 1
            self.textIconView.center = self.textIconLocation
            }, completion: nil)
        
        UIView.animateWithDuration(0.9, delay: 0, options: options, animations: { () -> Void in
            self.linkIconView.alpha = 1
            self.linkIconView.center = self.linkIconLocation
            }, completion: nil)
        
        UIView.animateWithDuration(1, delay: 0, options: options, animations: { () -> Void in
            self.videoIconView.alpha = 1
            self.videoIconView.center = self.videoIconLocation
            }, completion: nil)
        
    }
    
    @IBAction func onNevermind(sender: AnyObject) {
        let options = UIViewAnimationOptions.CurveEaseInOut
        UIView.animateWithDuration(0.2, delay: 0, options: options, animations: { () -> Void in
            self.photoIconView.center.y -= 400
            }, completion: nil)
        
        UIView.animateWithDuration(0.3, delay: 0, options: options, animations: { () -> Void in
            self.chatIconView.center.y -= 400
            }, completion: nil)
        
        UIView.animateWithDuration(0.4, delay: 0, options: options, animations: { () -> Void in
            self.quoteIconView.center.y -= 400
            }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0, options: options, animations: { () -> Void in
            self.textIconView.center.y -= 400
            }, completion: nil)
        
        UIView.animateWithDuration(0.6, delay: 0, options: options, animations: { () -> Void in
            self.linkIconView.center.y -= 400
            }, completion: nil)
        
        UIView.animateWithDuration(0.7, delay: 0, options: options, animations: { () -> Void in
            self.videoIconView.center.y -= 400
            }, completion: nil)
        UIView.animateWithDuration(0.8, animations: { () -> Void in
            self.nevermindButton.alpha = 0
            }) { (Bool) -> Void in
                //RESETS TO ORIGINAL LOCATION
                self.photoIconView.center = self.photoIconOLocation
                self.chatIconView.center = self.chatIconOLocation
                self.quoteIconView.center = self.quoteIconOLocation
                self.textIconView.center = self.textIconOLocation
                self.linkIconView.center = self.linkIconOLocation
                self.videoIconView.center = self.videoIconOLocation
                self.view.removeFromSuperview()
        }
        
    }


}
