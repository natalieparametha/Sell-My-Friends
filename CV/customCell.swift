//
//  customCell.swift
//  CV
//
//  Created by Natalie Parametha on 23/04/19.
//  Copyright © 2019 Natalie Parametha. All rights reserved.
//

import Foundation
import UIKit

class CustomCell: UITableViewCell {
    var message : String?
    var image: UIImage?
    
    var messageView : UITextView = {
        var textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder a Devoder: NSCoder) {
        fatalError("onit(coder:) has not been implemented")
    }
}
