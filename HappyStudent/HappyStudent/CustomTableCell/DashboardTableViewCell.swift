//
//  DashboardTableViewCell.swift
//  HappyStudent
//
//  Created by Santa on 12/2/16.
//  Copyright © 2016 santa. All rights reserved.
//

import UIKit

class DashboardTableViewCell: UITableViewCell {

	@IBOutlet weak var courseName: UILabel!
	@IBOutlet weak var classTiming: UILabel!
	@IBOutlet weak var classRoom: UILabel!
	
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
