//
//  DashboardViewController.swift
//  HappyStudent
//
//  Created by Santa on 12/2/16.
//  Copyright © 2016 santa. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

	@IBOutlet weak var tableView: UITableView!
	var dataArray = [NSDictionary]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
		dataArray = [["courseName": "C Programming", "classTiming": "Wed, 6pm-9pm", "classRoom": "Room 301"],["courseName": "Java Programming", "classTiming": "Fri, 6pm-9pm", "classRoom": "Room 303"],["courseName": "Python Programming", "classTiming": "Tue, 6pm-9pm", "classRoom": "Room 304"]]
    }

	//MARK: TableView delegate and datasource methods
	private func numberOfSectionsInTableView(tableView: UITableView) -> Int {
		return 1
	}
	
	func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
		let headerView = UIView()
		headerView.backgroundColor = UIColor(colorLiteralRed: 59/255, green: 123/255, blue: 177/255, alpha: 0.5)
		
		let label = UILabel()
		label.text = "My Courses - Fall 2016"
		label.textColor = UIColor.black
		label.font = UIFont.boldSystemFont(ofSize: 16.0)
		label.translatesAutoresizingMaskIntoConstraints = false
		headerView.addSubview(label)
		return headerView
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return dataArray.count
	}
	
	func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		return "My Courses - Fall 2016"
	}
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 100.0
	}

	internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cellIdentifier = "DashboardTableViewCell"
		let cell = self.tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath as IndexPath) as! DashboardTableViewCell
		let dataDict = dataArray[indexPath.row]
		cell.classTiming.text = dataDict.object(forKey: "classTiming") as! String?//"Wed, 6pm-9pm"
		cell.courseName.text = dataDict.object(forKey: "courseName") as! String?
		cell.classRoom.text = dataDict.object(forKey: "classRoom") as! String?
		return cell
	}
	


}
