//
//  CampusVC.swift
//  SRM
//
//  Created by Deepansh Saini on 28/12/18.
//  Copyright © 2018 Deepansh Saini. All rights reserved.
//

import UIKit

class CampusVC: UIViewController {

    @IBOutlet var mainScroolView : UIScrollView!
    @IBOutlet var libraryScroolView : UIScrollView!
    @IBOutlet var compScroolView : UIScrollView!
    @IBOutlet var electricalScroolView : UIScrollView!
    @IBOutlet var mechanicalScroolView : UIScrollView!
    @IBOutlet var physicsScroolView : UIScrollView!
    @IBOutlet var c4dScroolView : UIScrollView!
    @IBOutlet var chemistryScroolView : UIScrollView!
    @IBOutlet var campusScroolView : UIScrollView!

    
    var mainImgArray = [UIImage]()
    var libraryImgArray = [UIImage]()
    var compImgArray = [UIImage]()
    var electricalImgArray = [UIImage]()
    var mechanicalImgArray = [UIImage]()
    var physicsImgArray = [UIImage]()
    var c4dImgArray = [UIImage]()
    var chemistryImgArray = [UIImage]()
    var campusImgArray = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mainScroolView.frame = view.frame
        mainImgArray = [UIImage(named: "1"),
                    UIImage(named: "2"),
                    UIImage(named: "3"),
                    UIImage(named: "4"),
                    UIImage(named: "5"),
                    UIImage(named: "6"),
                    UIImage(named: "7"),
                    UIImage(named: "8")] as! [UIImage]
       
        libraryImgArray = [UIImage(named: "11"),
                        UIImage(named: "12"),
                        UIImage(named: "13"),
                        UIImage(named: "14")] as! [UIImage]
        
        compImgArray = [UIImage(named: "21"),
                           UIImage(named: "22")] as! [UIImage]
        
        electricalImgArray = [UIImage(named: "31"),
                        UIImage(named: "32")] as! [UIImage]
        
        mechanicalImgArray = [UIImage(named: "41"),
                              UIImage(named: "42")] as! [UIImage]
        
        physicsImgArray = [UIImage(named: "51"),
                              UIImage(named: "52")] as! [UIImage]
        
        chemistryImgArray = [UIImage(named: "71"),
                       UIImage(named: "72")] as! [UIImage]
        
        c4dImgArray = [UIImage(named: "61"),
                              UIImage(named: "62")] as! [UIImage]
        
        campusImgArray = [UIImage(named: "auditorium"),
                       UIImage(named: "c4dlab1"),
                       UIImage(named: "healthcare"),
                       UIImage(named: "sports1"),
                       UIImage(named: "transportation")] as! [UIImage]
        
        for i in 0..<mainImgArray.count{
            let imageView = UIImageView()
            imageView.image = mainImgArray[i]
            imageView.contentMode = .scaleAspectFill
            
            let xPostion = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPostion, y: 0, width: self.view.frame.width, height: 150)
            mainScroolView.contentSize.width = mainScroolView.frame.width * CGFloat (i+1 )
            
            mainScroolView.addSubview(imageView)
            
        }
        
        for i in 0..<libraryImgArray.count{
            let imageView = UIImageView()
            imageView.image = libraryImgArray[i]
            imageView.contentMode = .scaleAspectFill
            
            let xPostion = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPostion, y: 0, width: self.view.frame.width, height: 150)
            libraryScroolView.contentSize.width = libraryScroolView.frame.width * CGFloat (i+1 )
            
            libraryScroolView.addSubview(imageView)
            
        }
        
        for i in 0..<compImgArray.count{
            let imageView = UIImageView()
            imageView.image = compImgArray[i]
            imageView.contentMode = .scaleAspectFill
            
            let xPostion = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPostion, y: 0, width: self.view.frame.width, height: 150)
            compScroolView.contentSize.width = compScroolView.frame.width * CGFloat (i+1 )
            
            compScroolView.addSubview(imageView)
            
        }
        
        for i in 0..<electricalImgArray.count{
            let imageView = UIImageView()
            imageView.image = electricalImgArray[i]
            imageView.contentMode = .scaleAspectFill
            
            let xPostion = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPostion, y: 0, width: self.view.frame.width, height: 150)
            electricalScroolView.contentSize.width = electricalScroolView.frame.width * CGFloat (i+1 )
            
            electricalScroolView.addSubview(imageView)
            
        }
        
        for i in 0..<mechanicalImgArray.count{
            let imageView = UIImageView()
            imageView.image = mechanicalImgArray[i]
            imageView.contentMode = .scaleAspectFill
            
            let xPostion = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPostion, y: 0, width: self.view.frame.width, height: 150)
            mechanicalScroolView.contentSize.width = mechanicalScroolView.frame.width * CGFloat (i+1 )
            
            mechanicalScroolView.addSubview(imageView)
            
        }
        
        for i in 0..<physicsImgArray.count{
            let imageView = UIImageView()
            imageView.image = physicsImgArray[i]
            imageView.contentMode = .scaleAspectFill
            
            let xPostion = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPostion, y: 0, width: self.view.frame.width, height: 150)
            physicsScroolView.contentSize.width = physicsScroolView.frame.width * CGFloat (i+1 )
            
            physicsScroolView.addSubview(imageView)
            
        }
        
        for i in 0..<chemistryImgArray.count{
            let imageView = UIImageView()
            imageView.image = chemistryImgArray[i]
            imageView.contentMode = .scaleAspectFill
            
            let xPostion = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPostion, y: 0, width: self.view.frame.width, height: 150)
            chemistryScroolView.contentSize.width = chemistryScroolView.frame.width * CGFloat (i+1 )
            
            chemistryScroolView.addSubview(imageView)
            
        }
        
        for i in 0..<c4dImgArray.count{
            let imageView = UIImageView()
            imageView.image = c4dImgArray[i]
            imageView.contentMode = .scaleAspectFill
            
            let xPostion = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPostion, y: 0, width: self.view.frame.width, height: 150)
            c4dScroolView.contentSize.width = c4dScroolView.frame.width * CGFloat (i+1 )
            
            c4dScroolView.addSubview(imageView)
            
        }
        
        for i in 0..<campusImgArray.count{
            let imageView = UIImageView()
            imageView.image = campusImgArray[i]
            imageView.contentMode = .scaleAspectFill
            
            let xPostion = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPostion, y: 0, width: self.view.frame.width, height: 150)
            campusScroolView.contentSize.width = campusScroolView.frame.width * CGFloat (i+1 )
            
            campusScroolView.addSubview(imageView)
            
        }
        
        
    }

}
