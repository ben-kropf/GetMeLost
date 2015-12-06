//
//  DestinationTableViewCell.swift
//  Get Me Lost
//
//  Created by Ben Kropf on 12/5/15.
//  Copyright © 2015 benkropf. All rights reserved.
//

import UIKit

class DestinationTableViewCell: UITableViewCell {

    @IBOutlet weak var destinationLabel: UILabel!
    @IBOutlet weak var test: UISwitch!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
