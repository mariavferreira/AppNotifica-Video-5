//
//  RegisterCoordinator.swift
//  AppNotifica
//

import Foundation


import Foundation
import UIKit
class RegisterCoordinator: Coordinator {
    
    //faço com que todas as telas que usarem o LoginCoordinator impremente
    //o navigation controller. Senão todos todas as vezes teria que instãnciá-lo
    var navigationController: UINavigationController
    
    //cria um construtor para incializar meu navationCrontroller
    init (navigationController: UINavigationController ) {
            self.navigationController = navigationController
     
        }

      func start() {
        let viewController = RegisterViewController()
        viewController.onLogarTap = goToLogar
        self.navigationController.pushViewController(viewController, animated: true)

    }
    
    private func goToLogar() {
        navigationController.popViewController(animated: true)
    }
    
}
