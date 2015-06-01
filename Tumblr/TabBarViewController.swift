//
//  TabBarViewController.swift
//  Tumblr
//
//  Created by Cece Yu on 5/30/15.
//  Copyright (c) 2015 Cece Yu. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {
    @IBOutlet weak var contentView: UIView!
    
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var composeViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!

    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var composeButton: UIButton!
    @IBOutlet weak var accountButton: UIButton!
    @IBOutlet weak var trendingButton: UIButton!
    @IBOutlet weak var exploreBobView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var storyboard = UIStoryboard(name: "Main", bundle: nil)
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController") as! UIViewController!
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController") as! UIViewController!
        composeViewController = storyboard.instantiateViewControllerWithIdentifier("ComposeViewController") as! UIViewController!
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController") as! UIViewController!
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController") as! UIViewController!
        
        homeViewController.view.frame = contentView.frame
        contentView.addSubview(homeViewController.view)
        homeButton.selected = true
        
        
        let options = UIViewAnimationOptions.Autoreverse | UIViewAnimationOptions.Repeat | UIViewAnimationOptions.CurveEaseInOut
        
        UIView.animateWithDuration(1, delay: 0.0, options: options, animations: {
            self.exploreBobView.frame = CGRect(x: 0, y: 452-10, width: 185, height: 77)
        } , completion: nil)
        
    }

    @IBAction func onHomeTap(sender: AnyObject) {
        homeViewController.view.frame = contentView.bounds
        contentView.addSubview(homeViewController.view)
        homeButton.selected = true
        searchButton.selected = false
        accountButton.selected = false
        trendingButton.selected = false
    }

    @IBAction func onSearchTap(sender: AnyObject) {
        searchViewController.view.frame = contentView.bounds
        contentView.addSubview(searchViewController.view)
        searchButton.selected = true
        homeButton.selected = false
        accountButton.selected = false
        trendingButton.selected = false
        exploreBobView.alpha = 0
    }
    
    @IBAction func onComposeTap(sender: AnyObject) {
        addChildViewController(composeViewController)
//        composeViewController.view.frame = contentView.bounds
        contentView.addSubview(composeViewController.view)
        //View will appear has been called
        self.composeViewController.didMoveToParentViewController(self)
        exploreBobView.alpha = 0
    }
    
    @IBAction func onAccountTap(sender: AnyObject) {
        accountViewController.view.frame = contentView.bounds
        contentView.addSubview(accountViewController.view)
        accountButton.selected = true
        searchButton.selected = false
        homeButton.selected = false
        trendingButton.selected = false
    }
    
    @IBAction func onTrendingTap(sender: AnyObject) {
        trendingViewController.view.frame = contentView.bounds
        contentView.addSubview(trendingViewController.view)
        trendingButton.selected = true
        searchButton.selected = false
        accountButton.selected = false
        homeButton.selected = false
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    

}
