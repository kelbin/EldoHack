//
//  PopUpTitleCell.swift
//  AREldocode
//
//  Created by Савченко Максим Олегович on 23.06.2021.
//

import UIKit

final class PopUpTitleCell: UITableViewCell, Setupable {

    @IBOutlet var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    func setup(_ object: Any) {
        guard let model = object as? PopUpTitleEntity else { return }
        nameLabel.text = model.title
    }
}

struct PopUpTitleEntity: CommonEntity {
    var identifier: String {
        return "PopUpTitleCell"
    }
    
    var size: CGSize = CGSize(width: 0, height: 50)
    
    let title: String
}
