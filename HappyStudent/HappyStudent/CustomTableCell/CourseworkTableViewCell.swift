//
//  CourseworkTableViewCell.swift
//  HappyStudent
//
//  Created by Santa on 12/2/16.
//  Copyright © 2016 santa. All rights reserved.
//

import UIKit

class CourseworkTableViewCell: UITableViewCell {

	@IBOutlet weak var points: UILabel!
	@IBOutlet weak var dueDate: UILabel!
	@IBOutlet weak var assnTitile: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
