//
//  ProfileViewController.swift
//  SRM
//
//  Created by Deepansh Saini on 15/01/19.
//  Copyright © 2019 Deepansh Saini. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    
    var menuShowing = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuView.layer.shadowOpacity = 1
        menuView.layer.shadowRadius = 6
        
    }
    
    @IBAction func menuBtn(_ sender: Any) {
        if menuShowing{
            leadingConstraint.constant = -200
            UIView.animate(withDuration: 0.3) {
                self.view.layoutIfNeeded()
            }
        }else{
            leadingConstraint.constant = 0
            UIView.animate(withDuration: 0.5) {
                self.view.layoutIfNeeded()
            }
            
        }
        menuShowing = !menuShowing
    }
    
  

}
