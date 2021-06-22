//
//  GoodInfoCell.swift
//  AREldocode
//
//  Created by Савченко Максим Олегович on 23.06.2021.
//

import UIKit

final class GoodInfoCell: UITableViewCell, Setupable {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setup(_ object: Any) {
        
    }
    
}

struct GoodInfoEntity: CommonEntity {
    
    var identifier: String {
        return "GoodInfoCell"
    }
    
    var size: CGSize = CGSize(width: 0, height: 120)
}
