//
//  AppDelegate.swift
//  AREldocode
//
//  Created by Савченко Максим Олегович on 19.06.2021.
//

import UIKit

@main
final class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let viewController = AlreadySawGoodsController()
        let navigationController = UINavigationController(rootViewController: viewController)
        
        window?.rootViewController = navigationController
        
        window?.makeKeyAndVisible()
        window?.backgroundColor = .white
        
        UINavigationBar.appearance().barTintColor = .white
        UINavigationBar.appearance().tintColor = .black
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        UINavigationBar.appearance().isTranslucent = false
        UINavigationBar.appearance().shadowImage = UIImage()
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        
        return true
    }

}

