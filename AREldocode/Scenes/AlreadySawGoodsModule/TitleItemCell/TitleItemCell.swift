//
//  TitleItemCell.swift
//  AREldocode
//
//  Created by Савченко Максим Олегович on 20.06.2021.
//

import UIKit

final class TitleItemCell: UITableViewCell, Delegatable {
    
    weak var delegate: AnyObject?
    @IBOutlet var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }
    
}

extension TitleItemCell: Setupable {
    
    func setup(_ object: Any) {
        guard let model = object as? TitleItemEntity else { fatalError() }
        nameLabel.text = model.title
    }
    
}

struct TitleItemEntity: CommonEntity {
    
    var identifier: String {
        return "TitleItemCell"
    }
    
    var size: CGSize = CGSize(width: 0, height: 50)
    
    let title: String
}
