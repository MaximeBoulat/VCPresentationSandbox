//
//  CustomCell.swift
//  SeamgenDemo
//
//  Created by Maxime Boulat on 12/21/16.
//  Copyright © 2016 Maxime Boulat. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

	@IBOutlet weak var theLabel: UILabel!
	
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
