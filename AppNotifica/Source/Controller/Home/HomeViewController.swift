//
//  HomeViewController.swift
//  AppNotifica
//
//  Created by IFBITIC7 on 07/08/24.
//

import Foundation
import UIKit

class HomeViewController: ViewControllerDefault {
    
    let viewModel: HomeViewModel
    
    init(viewModel: HomeViewModel){
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    //cria uma variável que é do tipo LoginView
    lazy var homeView: HomeView = {
        let homeView = HomeView(viewModel: viewModel)
        
    return homeView
    }()
    
        
    override func loadView(){
        self.view = homeView
    }
    @objc
    func handleAdd() {
        viewModel.didTapAdd()
    }
    
       
    // é executado quando está carregando
       override func viewDidLoad() {
           super.viewDidLoad()
        self.title = "Ocorrências"
       }

}



