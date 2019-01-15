//
//  AboutUSVC.swift
//  SRM
//
//  Created by Deepansh Saini on 28/12/18.
//  Copyright © 2018 Deepansh Saini. All rights reserved.
//

import UIKit

class AboutUSVC: UIViewController {

    @IBOutlet var mainScroolView : UIScrollView!
    
    var imgArray = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mainScroolView.frame = view.frame
        imgArray = [UIImage(named: "1"),
                    UIImage(named: "2"),
                    UIImage(named: "3"),
                    UIImage(named: "4"),
                    UIImage(named: "5"),
                    UIImage(named: "6"),
                    UIImage(named: "7"),
                    UIImage(named: "8")] as! [UIImage]
        
        for i in 0..<imgArray.count{
            let imageView = UIImageView()
            imageView.image = imgArray[i]
            imageView.contentMode = .scaleAspectFill
            
            let xPostion = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPostion, y: 0, width: self.view.frame.width, height: 150)
            mainScroolView.contentSize.width = mainScroolView.frame.width * CGFloat (i+1 )
            
            mainScroolView.addSubview(imageView)
            
        }
        
        
        
        
        
    }

}
