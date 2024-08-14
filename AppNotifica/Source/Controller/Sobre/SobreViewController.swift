//
//  SobreViewController.swift
//  AppNotifica
//
//  Created by IFBITIC7 on 14/08/24.
//

import Foundation
import UIKit

class SobreViewController: ViewControllerDefault {
    
    //MARK: - Closures
    
    lazy var sobreView: SobreView = {
        let sobreView = SobreView()
        
        
        return sobreView
    }()
    
    override func loadView(){
        self.view = sobreView
    }
    
    //é executado quando está carregando
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Sobre"
    }
    
}
