//
//  HomeCoordinator.swift
//  AppNotifica
//
//  Created by IFBITIC7 on 07/08/24.
//

import Foundation
import UIKit
class HomeCoordinator: Coordinator {
    
    //faço com que todas as telas que usarem o LoginCoordinator impremente
    //o navigation controller. Senão todos todas as vezes teria que instãnciá-lo
    var navigationController: UINavigationController
    
    //cria um construtor para incializar meu navationCrontroller
    init (navigationController: UINavigationController ) {
        self.navigationController = navigationController
        
    }
    
    func start() {
        let viewController = HomeViewController()
        
        self.navigationController.pushViewController(viewController,animated: true)
    }
    
}
