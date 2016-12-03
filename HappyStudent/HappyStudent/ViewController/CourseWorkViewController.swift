//
//  CourseWorkViewController.swift
//  HappyStudent
//
//  Created by Santa on 12/2/16.
//  Copyright © 2016 santa. All rights reserved.
//

import UIKit

class CourseWorkViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
	var dataArray = [NSDictionary]()

	@IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
		// Do any additional setup after loading the view.
		dataArray = [["coursework1": "A Good First Program", "Submitted": "Sep 10, 2016 11:00PM", "Points": "10/10"],["coursework1": "BMI Calculator", "Submitted": "Oct 15, 2016 11:00PM", "Points": "9/10"],["coursework1": "A Swing for Input", "Submitted": "Oct 20, 2016 11:00PM", "Points": "10/10"]]
    }

	//MARK: TableView delegate and datasource methods
	private func numberOfSectionsInTableView(tableView: UITableView) -> Int {
		return 1
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return dataArray.count
	}
	
	func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		return "Coursework - C Programming"
	}
	
	func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
		let headerView = UIView()
		headerView.backgroundColor = UIColor(colorLiteralRed: 59/255, green: 123/255, blue: 177/255, alpha: 0.5)
		
		let label = UILabel()
		label.text = "Coursework - C Programming"
		label.textColor = UIColor.black
		label.font = UIFont.boldSystemFont(ofSize: 16.0)
		label.translatesAutoresizingMaskIntoConstraints = false
		headerView.addSubview(label)
		return headerView
	}
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 60.0
	}
	
	internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cellIdentifier = "CourseworkTableViewCell"
		let cell = self.tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath as IndexPath) as! CourseworkTableViewCell
		let dataDict = dataArray[indexPath.row]
		cell.assnTitile.text = dataDict.object(forKey: "coursework1") as! String?
		cell.dueDate.text = dataDict.object(forKey: "Submitted") as! String?
		cell.points.text = dataDict.object(forKey: "Points") as! String?
		return cell
	}

}
