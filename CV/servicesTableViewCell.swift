//
//  servicesTableViewCell.swift
//  CV
//
//  Created by Natalie Parametha on 26/04/19.
//  Copyright © 2019 Natalie Parametha. All rights reserved.
//

import UIKit

class servicesTableViewCell: UITableViewCell {

    @IBOutlet weak var servicesImage: UIImageView!
    @IBOutlet weak var servicesTitleLabel: UILabel!
    @IBOutlet weak var servicesLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
