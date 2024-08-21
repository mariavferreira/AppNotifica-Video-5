//
//  HomeViewModel.swift
//  AppNotifica
//
//  Created by IFBITIC7 on 19/08/24.
//

import Foundation
import UIKit

class HomeViewModel {
    var coordinator: HomeCoordinator
    var ocorrencias: [Ocorrencia] = []
    init(coordinator: HomeCoordinator) {
        self.coordinator = coordinator
    }
    
    func didTapAdd(){
        coordinator.presentNovaOcorrencia()
    }
    
    func fetchData() {
        self.ocorrencias = DataManager.shared.ocorrencias
    }
    
}
