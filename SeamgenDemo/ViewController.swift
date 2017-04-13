//
//  ViewController.swift
//  SeamgenDemo
//
//  Created by Maxime Boulat on 12/21/16.
//  Copyright © 2016 Maxime Boulat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	var tableviewController: MasterTableViewController?
	
	@IBOutlet weak var container: UIView!

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
//		let innerNav = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "EmbeddedNav")
		
		let nav = UINavigationController()
		
		self.add(child: nav, to: self.container)
		
		let blue = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Blue")
		
		nav.setViewControllers([blue], animated: false)
		
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if let nav = segue.destination as? UINavigationController, let vc = nav.viewControllers.first as? MasterTableViewController {
			self.tableviewController = vc
		}
	}
 
	@IBAction func didSelectSegment(_ sender: UISegmentedControl) {
		
				let outerNav = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "RootNav")
		self.show(outerNav, sender: self) 
		
//		self.tableviewController?.isCoach = sender.selectedSegmentIndex == 1
		
	}
	

}

