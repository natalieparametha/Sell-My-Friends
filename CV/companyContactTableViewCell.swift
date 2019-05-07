//
//  companyContactTableViewCell.swift
//  CV
//
//  Created by Natalie Parametha on 26/04/19.
//  Copyright © 2019 Natalie Parametha. All rights reserved.
//

import UIKit

class companyContactTableViewCell: UITableViewCell {

    @IBOutlet weak var contactIcon: UIImageView!
    @IBOutlet weak var contactTitle: UILabel!
    @IBOutlet weak var contactIsi: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
