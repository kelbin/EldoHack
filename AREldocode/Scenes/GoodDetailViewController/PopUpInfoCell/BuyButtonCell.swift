//
//  BuyButtonCell.swift
//  AREldocode
//
//  Created by Савченко Максим Олегович on 23.06.2021.
//

import UIKit

final class BuyButtonCell: UITableViewCell, Setupable {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setup(_ object: Any) {
        
    }
    
}

struct BuyButtonEntity: CommonEntity {
    var identifier: String {
        return "PopUpTitleCell"
    }
    
    var size: CGSize = CGSize(width: 0, height: 50)
}
