//
//  CarouselCell.swift
//  AREldocode
//
//  Created by Савченко Максим Олегович on 22.06.2021.
//

import UIKit
import ZKCarousel
import SnapKit

final class CarouselCell: UITableViewCell, Setupable {
  
    private lazy var carousel: ZKCarousel = {
        
        let slide = ZKCarouselSlide(image: #imageLiteral(resourceName: "Rectangle 39"), title: "", description: "")
        let slide1 = ZKCarouselSlide(image: #imageLiteral(resourceName: "Rectangle 39"), title: "", description: "")
        let slide2 = ZKCarouselSlide(image: #imageLiteral(resourceName: "Rectangle 39"), title: "", description: "")
                
        $0.slides = [slide, slide1, slide2]
  
        return $0
        
    }(ZKCarousel())
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        prepareView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        prepareView()
    }
    
    private func prepareView() {
        
        contentView.addSubview(carousel)
        
        carousel.snp.makeConstraints { maker in
            maker.top.bottom.equalToSuperview()
            maker.leading.equalToSuperview().offset(18)
            maker.trailing.equalToSuperview().offset(-18)
        }
        
    }
    
    func setup(_ object: Any) {
        
    }
}


struct CarouselEntity: CommonEntity {
   
    var identifier: String {
        return "CarouselCell"
    }
    
    var size: CGSize = CGSize(width: 0, height: 370)

}
