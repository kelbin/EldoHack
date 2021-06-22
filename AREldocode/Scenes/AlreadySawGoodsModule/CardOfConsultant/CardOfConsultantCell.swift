//
//  CardOfConsultantCell.swift
//  AREldocode
//
//  Created by Савченко Максим Олегович on 22.06.2021.
//

import UIKit

final class CardOfConsultantCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
//        layer.masksToBounds = false
//        layer.shadowOpacity = 0.23
//        layer.shadowRadius = 4
//        layer.shadowOffset = CGSize(width: 0, height: 0)
//        layer.shadowColor = UIColor.black.cgColor

//        contentView.backgroundColor = .white
//        contentView.layer.cornerRadius = 8
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
//        layer.masksToBounds = false
//        layer.shadowOpacity = 0.23
//        layer.shadowRadius = 4
//        layer.shadowOffset = CGSize(width: 0, height: 0)
//        layer.shadowColor = UIColor.black.cgColor
//
//        contentView.backgroundColor = .white
//        contentView.layer.cornerRadius = 8
//        fatalError("init(coder:) has not been implemented")
    }
    
}

extension CardOfConsultantCell: Setupable {
    
    func setup(_ object: Any) {
        guard let model = object as? CardOfConsultantEntity else { fatalError() }
        
    }
    
}


struct CardOfConsultantEntity: CommonEntity {
    
    var identifier: String {
        return "CardOfConsultantCell"
    }
    
    var size: CGSize = CGSize(width: 0, height: 220)
}
