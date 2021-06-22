//
//  InfoDetailCell.swift
//  AREldocode
//
//  Created by Савченко Максим Олегович on 23.06.2021.
//

import UIKit

final class InfoDetailCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
}

struct InfoDetailEntity: CommonEntity {
    var identifier: String {
        return "InfoDetailCell"
    }
    
    var size: CGSize = CGSize(width: 0, height: 120)
    
}
