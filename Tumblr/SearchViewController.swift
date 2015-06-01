
//
//  SearchViewController.swift
//  Tumblr
//
//  Created by Cece Yu on 5/30/15.
//  Copyright (c) 2015 Cece Yu. All rights reserved.
//

import UIKit
import Foundation

class SearchViewController: UIViewController {


    @IBOutlet weak var searchFeedView: UIImageView!
    @IBOutlet weak var searchLoader: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.searchFeedView.alpha = 0
        
        searchLoader.animationImages = [UIImage]()
        for var index = 0; index < 3; index++ {
            var frameName = String(format: "indicator_%05d", index)
            searchLoader.animationImages?.append(UIImage(named: frameName)!)
        }
        
        searchLoader.animationDuration = 1
        searchLoader.startAnimating()
        
        delay(1.5) {
            self.searchLoader.stopAnimating()
            UIView.animateWithDuration(0.2, animations: { () -> Void in
                self.searchLoader.alpha = 0
                self.searchFeedView.alpha = 1
            })
        }
  
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
