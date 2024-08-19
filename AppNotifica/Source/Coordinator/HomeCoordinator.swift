//
//  HomeCoordinator.swift
//  AppNotifica
//
//  Created by IFBITIC7 on 07/08/24.
//

import Foundation
import UIKit

class HomeCoordinator: Coordinator {
    
    private let navigationController: UINavigationController
    
    lazy var homeViewController: HomeViewController = {
        let viewModel = HomeViewModel(coordinator: self)
        let viewController = HomeViewController(viewModel: viewModel)
        
        //adiciona o nome home na tabBar
        viewController.tabBarItem.title = "Home"
        viewController.tabBarItem.image = UIImage(systemName: "homekit")
        return viewController
    }()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        self.navigationController.setViewControllers([homeViewController], animated: false)
    }
    
    func presentNovaOcorrencia() {
        let viewModel = NovaOcorrenciaViewModel(coordinator: self)
        let viewController = NovaOcorrenciaViewController(viewModel: viewModel)
        let navigationNovaOcorrencia = UINavigationController(rootViewController: viewController)
        navigationController.present(navigationNovaOcorrencia, animated: true)
    }
    
}
