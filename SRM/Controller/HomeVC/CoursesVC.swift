//
//  CoursesVC.swift
//  SRM
//
//  Created by Deepansh Saini on 28/12/18.
//  Copyright © 2018 Deepansh Saini. All rights reserved.
//

import UIKit

class CoursesVC: UIViewController {

    @IBOutlet weak var scienceTableView : UITableView!
    @IBOutlet weak var lawTableView : UITableView!
    @IBOutlet weak var humanityTableView : UITableView!
    @IBOutlet weak var managmentTableView : UITableView!
    @IBOutlet weak var CommerceTableView : UITableView!
    @IBOutlet var mainScroolView : UIScrollView!
    
    var imgArray = [UIImage]()
    
    let scienceSections = ["Under Graduation","Post Graduation","Doctrate"]
    let scienceCourses = [["B.Tech. - Computer Science and Engineering (CSE) - 4 years","B.Tech. - Computer Science & Engineering with specialization in Cloud and Mobile based Application (in association with IBM) - 4 years","B.Tech.- Computer Science & Engineering with specialization in Data Science & Artificial Intelligence (in association with IBM) - 4 years","B.Tech. - Civil Engineering (CE) - 4 years","B.Tech. - Biomedical Engineering (BME) - 4 years","B.Tech. - Electrical & Electronics Engineering (EEE)  - 4 years","B.Tech. - Electronics & Communication Engineering (ECE) - 4 years","B.Tech. - Mechanical Engineering (ME) - 4 years","B.Tech. - Mechatronics - 4 years","B.Tech. - Robotics and Automation - 4 years"],
                   ["M.Tech. - Computer Science and Engineering (CSE) - 2 years", "M.Tech. - Civil Engineering / Structural Engineering - 2 years", "M.Tech. - Biotechnology (Pharmaceutical / Industrial) - 2 years","M.Tech. - Electronics & Communication Engineering / Microelectronics - 2 years","M.Tech. - Mechanical Engineering / Production Engineering - 2 years"],
                   ["Ph.D. - Computer Science and Engineering (CSE)","Ph.D. - Civil Engineering","Ph.D. - Biotechnology (Pharmaceutical/Industrial)","Ph.D. - Electrical & Electronics Engineering (EEE)","Ph.D. - Electronics & Communication Engineering","Ph.D. - Mechanical Engineering (ME)"]
    ]
    
    let lawSections = ["Under Graduation","Post Graduation","UG/PG(Integrated) Courses","Doctrate"]
    let lawCourses = [["Under Graduation","Post Graduation","Doctrate"],
    ["Master of Law (LL.M.) - 1 year"],
    ["Bachelor of Law - B.B.A.LL.B.(Hons.) -  5 years","Bachelor of Law - B.B.A.LL.B.(Hons.) -  5 years"],
    ["Ph.D. - Law"]
    ]
    
    let humanitySections = ["Under Graduation","Post Graduation","Doctrate"]
    let humanityCourses = [["Bachelor of Science (B.Sc.) - Chemistry(Hons.) - 3 years","BA - English - 3 years","B.Sc. - Computer Science - 3 years ","BCA - 3 years","B.A. - Economics(Hons.) - 3 years","B.A. - Pol. Sc.(Hons.) - 3 years","B.A. - Psychology(Hons.) - 3 years","B.Sc. - Physics(Hons.) - 3 years","B.Sc. - Maths(Hons.) - 3 years","B.Sc. - Hospitality and Hotel Administration - 4 years","B.Sc. - Medical Laboratory Technology - 3 years","B. Des. - 4 years"],
         ["Master of Science (M.Sc.) - Microbiology (Applied / Pharmaceutical) - 2 years","Master of Science (M.Sc.) - Biotechnology  - 2 years","Master of Science (M.Sc.) - Chemistry  - 2 years","Master of Science (M.Sc.) - Mathematics - 2 years","Master of Science (M.Sc) - Physics - 2 years","MA - English - 2 years","M.A. - Economics - 2 years"],
         ["Ph.D. - Microbiology","Ph.D. - Environmental Science \n(Jointly with the Departments of Chemistry, Biotechnology and Management)","Ph.D. - English","Ph.D. - Mathematics","Ph.D. - Physics","Ph.D. - Chemistry","Ph.D. - Biotechnology (Pharmaceutical/Industrial)","Ph.D. - Library and Information Sciences"]
    ]
    
    let managmentSections = ["Under Graduation","Post Graduation","Doctrate"]
    let managmentCourses = [["Bachelor of Business Administration (B.B.A.) - 3 years"],
    ["Master of Business Administration (M.B.A.) - 2 years"],
    ["Ph.D. - Business/Management Studies","Ph.D. - Economics"]
    ]
    
    let commerceSections = ["Under Graduation","Post Graduation","Doctrate"]
    let commerceCourses = [["Bachelor of Commerce - B.Com. (Hons.)  - 3 years"],
    ["Master of Commerce - M.Com. - 2 years"],
    ["Ph.D. - Commerce"]
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Courses ViewController Main View Banner of pics
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
        // Creating a custom table view cell
        
        let cellNib = UINib(nibName: "CoursesTableViewCell", bundle: nil)
        
        scienceTableView.register(cellNib, forCellReuseIdentifier: "courseFeedCell")
        lawTableView.register(cellNib, forCellReuseIdentifier: "courseFeedCell")
        humanityTableView.register(cellNib, forCellReuseIdentifier: "courseFeedCell")
        managmentTableView.register(cellNib, forCellReuseIdentifier: "courseFeedCell")
        CommerceTableView.register(cellNib, forCellReuseIdentifier: "courseFeedCell")
        
        scienceTableView.delegate = self
        scienceTableView.dataSource = self
        
        lawTableView.delegate = self
        lawTableView.dataSource = self
        
        humanityTableView.delegate = self
        humanityTableView.dataSource = self
        
        managmentTableView.delegate = self
        managmentTableView.dataSource = self
        
        CommerceTableView.delegate = self
        CommerceTableView.dataSource = self
        
    }
    

   

}


extension CoursesVC : UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if tableView == scienceTableView{
            return self.scienceSections[section]
        }else if tableView == lawTableView{
            return self.lawSections[section]
        }else if tableView == humanityTableView{
            return self.humanitySections[section]
        }else if tableView == managmentTableView{
            return self.managmentSections[section]
        }else if tableView == CommerceTableView{
            return self.commerceSections[section]
        }else{
            return self.commerceSections[section]
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        if tableView == scienceTableView{
            return self.scienceSections.count
        }else if tableView == lawTableView{
            return self.lawSections.count
        }else if tableView == humanityTableView{
            return self.humanitySections.count
        }else if tableView == managmentTableView{
            return self.managmentSections.count
        }else if tableView == CommerceTableView{
            return self.commerceSections.count
        }else{
            return 1
        }
    }
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == scienceTableView{
            return scienceCourses[section].count
        }else if tableView == lawTableView{
            return lawCourses[section].count
        }else if tableView == humanityTableView{
            return humanityCourses[section].count
        }else if tableView == managmentTableView{
            return managmentCourses[section].count
        }else if tableView == CommerceTableView{
            return commerceCourses[section].count
        }else{
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == scienceTableView{
            let cell = tableView.dequeueReusableCell(withIdentifier: "courseFeedCell", for: indexPath)as? CoursesTableViewCell
            
            cell?.coursesName.text = scienceCourses[indexPath.section][indexPath.row]
            
            return cell!
        }else if tableView == lawTableView{
            let cell = tableView.dequeueReusableCell(withIdentifier: "courseFeedCell", for: indexPath)as? CoursesTableViewCell
            
            cell?.coursesName.text = lawCourses[indexPath.section][indexPath.row]
            
            return cell!
        }else if tableView == humanityTableView{
            let cell = tableView.dequeueReusableCell(withIdentifier: "courseFeedCell", for: indexPath)as? CoursesTableViewCell
            
            cell?.coursesName.text = humanityCourses[indexPath.section][indexPath.row]
            
            return cell!
        }else if tableView == managmentTableView{
            let cell = tableView.dequeueReusableCell(withIdentifier: "courseFeedCell", for: indexPath)as? CoursesTableViewCell
            
           cell?.coursesName.text = managmentCourses[indexPath.section][indexPath.row]
            
            return cell!
        }else if tableView == CommerceTableView{
            let cell = tableView.dequeueReusableCell(withIdentifier: "courseFeedCell", for: indexPath)as? CoursesTableViewCell
            
            cell?.coursesName.text = commerceCourses[indexPath.section][indexPath.row]
            
            return cell!
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "courseFeedCell", for: indexPath)as? CoursesTableViewCell
            
            cell?.coursesName.text = commerceCourses[indexPath.section][indexPath.row]
            
            return cell!
        }
        
        
        
        
        
    }
    
    
}
