//
//  AnnouncementViewController.swift
//  HappyStudent
//
//  Created by Santa on 12/2/16.
//  Copyright © 2016 santa. All rights reserved.
//

import UIKit

class AnnouncementViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

	@IBOutlet weak var tableView: UITableView!
	var dataArray = [Dictionary<String, Array<String>>()]
	
    override func viewDidLoad() {
        super.viewDidLoad()
//		tableView.estimatedRowHeight = 150.0
		tableView.rowHeight = UITableViewAutomaticDimension
        // Do any additional setup after loading the view.
		dataArray = [["courseName": ["C Programming"], "announcement": ["The project should be done as a team, with minimum 2 and maximum 3 students in a team", "Try to attend online session https://mail.google.com/mail/u/0/#inbox/157e3486dc30d227", "There is no class on 12 Dec"]], ["courseName": ["Java Programming"], "announcement": ["There is no class on 12 Dec", "The project should be done as a team, with minimum 2 and maximum 3 students in a team", "Try to attend online session https://mail.google.com/mail/u/0/#inbox/157e3486dc30d227"]],["courseName": ["Python Programming"], "announcement": ["Try to attend online session https://mail.google.com/mail/u/0/#inbox/157e3486dc30d227", "The project should be done as a team, with minimum 2 and maximum 3 students in a team", "There is no class on 12 Dec"]]]
    }

	//MARK: TableView delegate and datasource methods

	public func numberOfSections(in tableView: UITableView) -> Int{
		return 3//dataArray.count
	}
	
	func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		let dataDict = dataArray[section]
		let some = dataDict["courseName"]
		return some?[0]
	}
	
	func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
		
		let dataDict = dataArray[section]
		let some = dataDict["courseName"]
		
		let headerView = UIView()
		headerView.backgroundColor = UIColor(colorLiteralRed: 59/255, green: 123/255, blue: 177/255, alpha: 0.5)
		
		let label = UILabel()
		label.text = some?[0]
		label.textColor = UIColor.black
		label.font = UIFont.boldSystemFont(ofSize: 16.0)
		label.translatesAutoresizingMaskIntoConstraints = false
		headerView.addSubview(label)
		return headerView
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		let dataDict = dataArray[section]
		let some = dataDict["announcement"]
		return some!.count
	}
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 60.0
	}
	
	internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cellIdentifier = "AnnouncementTableViewCell"
		let cell = self.tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath as IndexPath) as! AnnouncementTableViewCell
		let dataDict = dataArray[indexPath.section]
		let some = dataDict["announcement"]
		cell.announcementLabel.text = some?[indexPath.row]
		return cell
	}
	
}
