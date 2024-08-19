//
//  TabBarCoordinator.swift
//  AppNotifica
//
//  Created by IFBITIC7 on 14/08/24.
//

import Foundation
import UIKit

class TabBarCoordinator : Coordinator {
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController){
        self.navigationController = navigationController
    }
    func start() {
        //inicializa o TabBarController
        let tabBarController = TabBarController()
        tabBarController.modalPresentationStyle = .overFullScreen
        
        let homeNavigation = UINavigationController()
        
        //inicializar as views da tabBar homeViewCoordinator
        let homeViewCoordinator = HomeCoordinator(navigationController: homeNavigation)
        homeViewCoordinator.start()
        
        
        let sobreNavigation = UINavigationController()
        let sobreViewCoordinator = SobreCoordinator(navigationController: sobreNavigation)
        sobreViewCoordinator.start()
                
        let navigationControllers = [homeNavigation, sobreNavigation]
        
        tabBarController.setViewControllers(navigationControllers, animated: true)
        
        self.navigationController.present(tabBarController, animated: true)
    }
}
