//
//  HomeViewController.swift
//  AppNotifica
//
//  Created by IFBITIC7 on 07/08/24.
//

import Foundation
import UIKit

class HomeViewController: ViewControllerDefault {
    
    //cria uma variável que é do tipo LoginView
    lazy var homeView: HomeView = {
        let homeView = HomeView()
        
    return homeView
    }()
    
       override func loadView(){
           self.view = homeView
       }
       
    // é executado quando está carregando
       override func viewDidLoad() {
           super.viewDidLoad()
        self.title = "Ocorrências"
       }

}



