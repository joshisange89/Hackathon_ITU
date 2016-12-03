//
//  CourseViewController.swift
//  HappyStudent
//
//  Created by Santa on 12/2/16.
//  Copyright © 2016 santa. All rights reserved.
//

import UIKit

class CourseViewController: UIViewController {
	@IBOutlet weak var segmentedControl: UISegmentedControl!
	@IBOutlet weak var courseWorkView: UIView!
	@IBOutlet weak var courseResourcesView: UIView!
	
    override func viewDidLoad() {
        super.viewDidLoad()
		self.title = "C Programming"
        // Do any additional setup after loading the view.
		courseWorkView.isHidden = false
		courseResourcesView.isHidden = true
    }

	@IBAction func indexChanged(_ sender: AnyObject) {
		
		switch segmentedControl.selectedSegmentIndex
		{
		case 0:
			courseWorkView.isHidden = false
			courseResourcesView.isHidden = true
		case 1:
			courseWorkView.isHidden = true
			courseResourcesView.isHidden = false
		default:
			break;
		}
	}
}
