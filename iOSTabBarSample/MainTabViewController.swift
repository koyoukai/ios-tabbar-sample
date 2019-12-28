//
//  MainTabViewController.swift
//  iOSTabBarSample
//
//  Created by koyo on 2019/12/28.
//  Copyright © 2019 koyo. All rights reserved.
//

import UIKit

class MainTabViewController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        configureMainTab()
    }
    
    func configureMainTab() {
        let vc1 = mainTabController(title: "ホーム", image: UIImage(named: "icon_home.png")!, rootViewController: ViewController1())
        let vc2 = mainTabController(title: "ボックス", image: UIImage(named: "icon_box.png")!, rootViewController: ViewController2())
        let vc3 = mainTabController(title: "検索", image: UIImage(named: "icon_search.png")!, rootViewController: ViewController3())
        let vc4 = mainTabController(title: "タグ", image: UIImage(named: "icon_tag.png")!, rootViewController: ViewController4())
        
        viewControllers = [vc1, vc2, vc3, vc4]
        
    }
    
    func mainTabController(title: String, image: UIImage, rootViewController: UIViewController = UIViewController()) -> UINavigationController {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        navController.tabBarItem.imageInsets = UIEdgeInsets(top: 2, left: 0, bottom: 0, right: 0)
        return navController
    }

}
