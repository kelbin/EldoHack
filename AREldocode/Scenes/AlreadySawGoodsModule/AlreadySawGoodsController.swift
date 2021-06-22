//
//  AlreadySawGoodsController.swift
//  AREldocode
//
//  Created by Савченко Максим Олегович on 20.06.2021.
//

import UIKit
import SnapKit

final class AlreadySawGoodsController: UIViewController {
    
    var model: [CommonEntity] = []
    
    private lazy var tableView: UITableView = {
        
        let nib = UINib(nibName: "GoodsItemCell", bundle: nil)
        let nib1 = UINib(nibName: "TitleItemCell", bundle: nil)
        let nib2 = UINib(nibName: "SpaceTableViewCell", bundle: nil)
        let nib3 = UINib(nibName: "CardOfConsultantCell", bundle: nil)
        
        $0.register(nib, forCellReuseIdentifier: "GoodsItemCell")
        $0.register(nib1, forCellReuseIdentifier: "TitleItemCell")
        $0.register(nib2, forCellReuseIdentifier: "SpaceTableViewCell")
        $0.register(nib3, forCellReuseIdentifier: "CardOfConsultantCell")
        
        $0.delegate = self
        $0.dataSource = self
        
        $0.separatorStyle = .none
        
        return $0
    }(UITableView())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareViews()
        prepareModel()
        
        self.title = "Просмотренные товары"
        
        let rightBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "icons-1"), style: .done, target: self, action: #selector(tapToRightButton))
        
        self.navigationItem.rightBarButtonItem = rightBarButtonItem
    }
    
    private func prepareModel() {
        
        model += [SpaceEntity(size: CGSize(width: 0, height: 22)),
                  GoodItemEntity(rateImage: #imageLiteral(resourceName: "Frame 967"), itemImage: #imageLiteral(resourceName: "Rectangle 21"), rateCounter: "4.8", title: "Samsung QE55Q77AAU", price: "119 990 ₽", rentPrice: "Рассрочка от 2000 ₽ / мес."),
                  SpaceEntity(size: CGSize(width: 0, height: 22)),
                  GoodItemEntity(rateImage: #imageLiteral(resourceName: "Frame 967"), itemImage: #imageLiteral(resourceName: "Rectangle 21"), rateCounter: "4.8", title: "Samsung QE55Q77AAU", price: "119 990 ₽", rentPrice: "Рассрочка от 2000 ₽ / мес."),
                  SpaceEntity(size: CGSize(width: 0, height: 22)),
                  GoodItemEntity(rateImage: #imageLiteral(resourceName: "Frame 967"), itemImage: #imageLiteral(resourceName: "Rectangle 21"), rateCounter: "4.8", title: "Samsung QE55Q77AAU", price: "119 990 ₽", rentPrice: "Рассрочка от 2000 ₽ / мес."),
                  SpaceEntity(size: CGSize(width: 0, height: 22)),
                  GoodItemEntity(rateImage: #imageLiteral(resourceName: "Frame 967"), itemImage: #imageLiteral(resourceName: "Rectangle 21"), rateCounter: "4.8", title: "Samsung QE55Q77AAU", price: "119 990 ₽", rentPrice: "Рассрочка от 2000 ₽ / мес."),
                  SpaceEntity(size: CGSize(width: 0, height: 40)),
                  TitleItemEntity(title: "Персональная рекомендация"),
                  SpaceEntity(size: CGSize(width: 0, height: 26)),
                  GoodItemEntity(rateImage: #imageLiteral(resourceName: "Frame 967"), itemImage: #imageLiteral(resourceName: "Rectangle 21"), rateCounter: "4.8", title: "Samsung QE55Q77AAU", price: "119 990 ₽", rentPrice: "Рассрочка от 2000 ₽ / мес."),
                  SpaceEntity(size: CGSize(width: 0, height: 22)),
                  GoodItemEntity(rateImage: #imageLiteral(resourceName: "Frame 967"), itemImage: #imageLiteral(resourceName: "Rectangle 21"), rateCounter: "4.8", title: "Samsung QE55Q77AAU", price: "119 990 ₽", rentPrice: "Рассрочка от 2000 ₽ / мес."),
                  SpaceEntity(size: CGSize(width: 0, height: 40)),
                  TitleItemEntity(title: "Вас консультировал"),
                  SpaceEntity(size: CGSize(width: 0, height: 22)),
                  CardOfConsultantEntity(size: CGSize(width: 0, height: 222))
        ]
 
    }
    
    private func prepareViews() {
        
        view.addSubview(tableView)
        
        tableView.snp.makeConstraints { maker in
            maker.edges.equalToSuperview()
        }
        
    }
    
    @objc func tapToRightButton() {
        
        
        
    }
    
}

extension AlreadySawGoodsController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = model[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: row.identifier, for: indexPath)
        
        (cell as? Setupable)?.setup(row)
        (cell as? Delegatable)?.delegate = self
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return model[indexPath.row].size.height
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let row = model[indexPath.row]
        
        if row.identifier == "GoodsItemCell" {
        
            let goodDetailVC = GoodDetailViewController()
        
            self.navigationController?.pushViewController(goodDetailVC, animated: true)
            
        }
    }
    
}
