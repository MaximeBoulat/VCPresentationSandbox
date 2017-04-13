//
//  MasterTableViewController.swift
//  SeamgenDemo
//
//  Created by Maxime Boulat on 12/21/16.
//  Copyright © 2016 Maxime Boulat. All rights reserved.
//

import UIKit

class MasterTableViewController: UITableViewController {
	
	var dataSource: [String] = []
	
	var isCoach: Bool = false {
			didSet{
				if self.isCoach {
					self.dataSource = ["Students", "Sensors", "Bats", "Help"]
				}
				else {
					self.dataSource = ["Sensors", "Bats", "Help"]
				}
			
			self.tableView.reloadData()
		}
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		
		if self.isCoach {
			self.dataSource = ["Students", "Sensors", "Bats", "Help"]
		}
		else {
			self.dataSource = ["Sensors", "Bats", "Help"]
		}
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		print("viewWillAppear firing on MasterTableViewController!!!!!!!!!!!!!")
	}
	

	
    // MARK: - Tableview methods

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
		return self.dataSource.count
    }
	
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as! CustomCell
		
		let data = self.dataSource[indexPath.row]
		
		cell.theLabel.text = data
		
		return cell
	}

}
