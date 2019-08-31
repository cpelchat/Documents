//
//  DocumentTableViewCell.swift
//  Documents
//
//  Created by Cassidy Pelchat on 8/30/19.
//  Copyright © 2019 Cassidy Pelchat. All rights reserved.
//

import UIKit

class DocumentTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var sizeLabel: UILabel!
    @IBOutlet weak var modificationDateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
 
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
