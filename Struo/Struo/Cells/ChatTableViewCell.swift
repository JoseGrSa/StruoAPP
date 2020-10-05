//
//  ChatTableViewCell.swift
//  Struo
//
//  Created by Luis Alberto Fernández Castro on 31/05/20.
//  Copyright © 2020 LF Coding. All rights reserved.
//

import UIKit

class ChatTableViewCell: UITableViewCell {
    
    @IBOutlet weak var chatImageView: UIImageView!
    @IBOutlet weak var chatTitleLabel: UILabel!
    @IBOutlet weak var chatLastEditLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}
