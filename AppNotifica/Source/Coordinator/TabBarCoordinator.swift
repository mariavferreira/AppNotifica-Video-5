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
        
        //inicializar as views da tabBar homeViewCoordinator
        let homeViewCoordinator = HomeCoordinator(navigationController: self.navigationController)
        
        let novaOcorrenciaViewCoordinator = NovaOcorrenciaCoordinator(navigationController: self.navigationController)
        
        let sobreViewCoordinator = SobreCoordinator(navigationController: self.navigationController)
                
        //passa uma lista de view que serão mostradas na tabbar
        tabBarController.setViewControllers([homeViewCoordinator.homeViewController, novaOcorrenciaViewCoordinator.novaOcorrenciaViewController,sobreViewCoordinator.sobreViewController], animated: true)
        
        self.navigationController.pushViewController(tabBarController, animated: true)
    }
}
