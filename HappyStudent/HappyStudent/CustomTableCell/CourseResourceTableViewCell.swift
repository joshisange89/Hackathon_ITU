//
//  CourseResourceTableViewCell.swift
//  HappyStudent
//
//  Created by Santa on 12/2/16.
//  Copyright © 2016 santa. All rights reserved.
//

import UIKit

class CourseResourceTableViewCell: UITableViewCell {

	@IBOutlet weak var itemImageView: UIImageView!
	@IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
