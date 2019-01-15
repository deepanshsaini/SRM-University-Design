//
//  CoursesTableViewCell.swift
//  SRM
//
//  Created by Deepansh Saini on 12/01/19.
//  Copyright © 2019 Deepansh Saini. All rights reserved.
//

import UIKit

class CoursesTableViewCell: UITableViewCell {

    @IBOutlet weak var coursesName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
