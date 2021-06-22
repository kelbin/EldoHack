//
//  GoodsItemCell.swift
//  AREldocode
//
//  Created by Савченко Максим Олегович on 20.06.2021.
//

import UIKit

final class GoodsItemCell: UITableViewCell, Delegatable {

    weak var delegate: AnyObject?
    
    @IBOutlet weak var rateCounterLabel: UILabel!
    @IBOutlet weak var rateImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var rentPriceLabel: UILabel!
    @IBOutlet weak var basketButton: UIButton!
    @IBOutlet weak var favoriteButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }
    
    
}

extension GoodsItemCell: Setupable {
    
    func setup(_ object: Any) {
        guard let model = object as? GoodItemEntity else { fatalError() }
        
        
    }
    
}


struct GoodItemEntity: CommonEntity {
    
    var identifier: String {
        return "GoodsItemCell"
    }
    
    var size: CGSize = CGSize(width: 0, height: 125)
    let rateImage: UIImage
    let itemImage: UIImage
    let rateCounter: String
    let title: String
    let price: String
    let rentPrice: String
}
