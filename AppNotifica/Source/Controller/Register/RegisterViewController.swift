//
//  RegisterViewController.swift
//  AppNotifica
//
//

import Foundation
import UIKit

class RegisterViewController: ViewControllerDefault {
    var onLogarTap: (() -> Void)?
    
    //cria uma variável que é do tipo LoginView
    lazy var registerView: RegisterView = {
        let registerView = RegisterView()
        //registerView.onLogarTap = self.onLogarTap
        registerView.onLogarTap = { [weak self] in
            if let self = self {
                self.onLogarTap?()
            }
        }
        
        return registerView
    }()
    
    deinit {
        print("Saindo de \(Self.self)")
    }
    
       override func loadView(){
           self.view = registerView
       }
       
    // é executado quando está carregando
       override func viewDidLoad() {
           super.viewDidLoad()
        self.title = "Registrar"

       }

}
