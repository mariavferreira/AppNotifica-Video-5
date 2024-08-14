//
//  TabBarController.swift
//  AppNotifica
//
//  Created by IFBITIC7 on 14/08/24.
//

import Foundation
import UIKit

class TabBarController: UITabBarController {
    
    //sobrescreve o método responsável por controlar os elementos na tela
    override func setViewControllers(_ viewControllers: [UIViewController]?, animated: Bool) {
        super.setViewControllers(viewControllers, animated: true)
        
        self.tabBar.tintColor = .buttonBackGroundColor
        self.tabBar.isTranslucent = true
        UITabBar.appearance().barTintColor = .viewBackGroundColor
    }
    
}
