//
//  LoginViewController.swift
//  AppNotifica
//

import Foundation
import UIKit

class LoginViewController: ViewControllerDefault {
    var onLoginTap: (() -> Void)?
    var onRegisterTap: (() -> Void)?
    
    //cria uma variável que é do tipo LoginView
    lazy var loginView: LoginView = {
        let loginView = LoginView()
        loginView.onLoginTap = self.onLoginTap
        loginView.onRegisterTap = self.onRegisterTap
        
        return loginView
    }()
    
       override func loadView(){
           self.view = loginView
       }
       
    // é executado quando está carregando
       override func viewDidLoad() {
           super.viewDidLoad()
        self.title = "Logar"

       }

}
