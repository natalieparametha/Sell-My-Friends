//
//  contactUsTableViewCell.swift
//  CV
//
//  Created by Natalie Parametha on 26/04/19.
//  Copyright © 2019 Natalie Parametha. All rights reserved.
//

import UIKit

class contactUsTableViewCell: UITableViewCell {

    @IBOutlet weak var contactImage: UIImageView!
    @IBOutlet weak var Keterangan: UILabel!
    @IBOutlet weak var isiContact: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
