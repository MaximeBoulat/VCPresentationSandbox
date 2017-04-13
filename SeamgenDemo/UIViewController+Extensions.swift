//
//  UIViewController+Extensions.swift
//  SeamgenDemo
//
//  Created by Maxime Boulat on 4/13/17.
//  Copyright © 2017 Maxime Boulat. All rights reserved.
//

import UIKit

extension UIViewController {
	
	func add(child viewController: UIViewController, to view: UIView) {
		viewController.willMove(toParentViewController: self)
		
		self.addChildViewController(viewController)
		viewController.view.translatesAutoresizingMaskIntoConstraints = false
		view.addSubview(viewController.view)
		
		
		viewController.didMove(toParentViewController: self)
		viewController.view.constrainEdgesToSuperview()
	}

	
}

extension UIView {
	func constrainEdgesToSuperview(withMargin margin: CGFloat = 0.0) {
		if let superview = superview {
			self.translatesAutoresizingMaskIntoConstraints = false
			NSLayoutConstraint.activate([
				(self.topAnchor.constraint(equalTo: superview.topAnchor, constant: margin)),
				(self.bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: -margin)),
				(self.leftAnchor.constraint(equalTo: superview.leftAnchor, constant: margin)),
				(self.rightAnchor.constraint(equalTo: superview.rightAnchor, constant: -margin))
				])
		}
	}
}

