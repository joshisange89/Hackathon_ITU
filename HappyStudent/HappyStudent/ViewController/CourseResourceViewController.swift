//
//  CourseResourceViewController.swift
//  HappyStudent
//
//  Created by Santa on 12/2/16.
//  Copyright © 2016 santa. All rights reserved.
//

import UIKit

class CourseResourceViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
	var dataArray = [NSDictionary]()
	@IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
		dataArray = [["courseName": "syllabus", "image": "doc"],["courseName": "Text Book: http://www.mindview.net/Books/TIJ/", "image": ""],["courseName": "Java Docs: http://docs.oracle.com/javase/specs/jls/se7/jls7.pdf", "image": "doc"]]

    }

	//MARK: TableView delegate and datasource methods
	private func numberOfSectionsInTableView(tableView: UITableView) -> Int {
		return 1
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return dataArray.count
	}
	
	func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		return "Resources - C Programming"
	}
	
	
	func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
		let headerView = UIView()
		headerView.backgroundColor = UIColor(colorLiteralRed: 59/255, green: 123/255, blue: 177/255, alpha: 0.5)
		
		let label = UILabel()
		label.text = "Resources - C Programming"
		label.textColor = UIColor.black
		label.font = UIFont.boldSystemFont(ofSize: 16.0)
		label.translatesAutoresizingMaskIntoConstraints = false
		headerView.addSubview(label)
		return headerView
	}
	
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 50.0
	}
	
	internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cellIdentifier = "CourseResourceTableViewCell"
		let cell = self.tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath as IndexPath) as! CourseResourceTableViewCell
		let dataDict = dataArray[indexPath.row]
		let imageName = dataDict.object(forKey: "image") as! String?
		cell.itemImageView.image = UIImage(named: imageName!)
		cell.nameLabel.text = dataDict.object(forKey: "courseName") as! String?
		return cell
	}

}
