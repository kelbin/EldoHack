//
//  GoodDetailViewController.swift
//  AREldocode
//
//  Created by Савченко Максим Олегович on 22.06.2021.
//

import UIKit
import SnapKit
import ZKCarousel

final class GoodDetailViewController: UIViewController {
    
    var model: [CommonEntity] = []
    
    private lazy var tableView: UITableView = {
        
        let nib2 = UINib(nibName: "SpaceTableViewCell", bundle: nil)
        let nib3 = UINib(nibName: "GoodInfoCell", bundle: nil)
        let nib4 = UINib(nibName: "PopUpTitleCell", bundle: nil)
        let nib5 = UINib(nibName: "InfoDetailCell", bundle: nil)
        let nib6 = UINib(nibName: "BuyButtonCell", bundle: nil)
        
        $0.register(nib2, forCellReuseIdentifier: "SpaceTableViewCell")
        $0.register(nib3, forCellReuseIdentifier: "GoodInfoCell")
        $0.register(nib4, forCellReuseIdentifier: "PopUpTitleCell")
        $0.register(nib5, forCellReuseIdentifier: "InfoDetailCell")
        $0.register(nib6, forCellReuseIdentifier: "BuyButtonCell")
        
        $0.register(CarouselCell.self, forCellReuseIdentifier: "CarouselCell")
        
        $0.delegate = self
        $0.dataSource = self
        
        $0.separatorStyle = .none
        
        return $0
    }(UITableView())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareViews()
        
        navigationController?.navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        let arButton  = UIBarButtonItem(image: #imageLiteral(resourceName: "icons-7"), style: .plain, target: self, action: #selector(tapToARButton))
        let shareButton = UIBarButtonItem(image: #imageLiteral(resourceName: "icons-8"), style: .plain, target: self, action: #selector(tapToShareButton))

        navigationItem.rightBarButtonItems = [shareButton, arButton]
        
        model += [SpaceEntity(size: CGSize(width: 0, height: 20)),
                  CarouselEntity(),
                  SpaceEntity(size: CGSize(width: 0, height: 20)),
                  GoodInfoEntity(),
                  SpaceEntity(size: CGSize(width: 0, height: 20)),
                  PopUpTitleEntity(title: "Характеристики"),
                  SpaceEntity(size: CGSize(width: 0, height: 10)),
                  InfoDetailEntity(),
                  SpaceEntity(size: CGSize(width: 0, height: 10)),
                  PopUpTitleEntity(title: "Отзывы"),
                  SpaceEntity(size: CGSize(width: 0, height: 10)),
                  PopUpTitleEntity(title: "Вопросы и ответы"),
                  SpaceEntity(size: CGSize(width: 0, height: 15)),
                  BuyButtonEntity(),
                  SpaceEntity(size: CGSize(width: 0, height: 20))
                ]
        
        tableView.reloadData()
    }
    
    private func prepareViews() {
        
        view.addSubview(tableView)
        
        tableView.snp.makeConstraints { maker in
            maker.edges.equalToSuperview()
        }
        
    }
    
    @objc func tapToARButton() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ViewController")
        self.navigationController!.present(vc, animated: true, completion: nil)
    }
    
    @objc func tapToShareButton() {
        
        let message = "Телевизор Samsung QE55Q77AAU"
                
        let objectsToShare = [message] as [Any]
        let activityVC = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
        activityVC.excludedActivityTypes = [UIActivity.ActivityType.airDrop, UIActivity.ActivityType.addToReadingList]
        self.present(activityVC, animated: true, completion: nil)
        
    }
}


extension GoodDetailViewController: UITableViewDelegate, UITableViewDataSource {

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
    
}
