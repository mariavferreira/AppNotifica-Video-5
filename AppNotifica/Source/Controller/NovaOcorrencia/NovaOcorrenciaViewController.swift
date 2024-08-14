//
//  NovaOcorrenciaViewController.swift
//  AppNotifica
//
//  Created by IFBITIC7 on 14/08/24.
//

import Foundation
import UIKit

class NovaOcorrenciaViewController: ViewControllerDefault {
    
    //MARK: - Closures
    
    lazy var novaOcorrenciaView: NovaOcorrenciaView = {
        let novaOcorrenciaView = NovaOcorrenciaView()
        
        return novaOcorrenciaView
    }()
    
    override func loadView(){
        self.view = novaOcorrenciaView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Nova Ocorrência"
    }
    
}
