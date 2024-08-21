//
//  NovaOcorrenciaViewModel.swift
//  AppNotifica
//
//  Created by IFBITIC7 on 19/08/24.
//

import Foundation
import UIKit

class NovaOcorrenciaViewModel{
    
    var coordinator: HomeCoordinator
    
    init(coordinator: HomeCoordinator) {
        self.coordinator = coordinator
    }
    
    func didTapSave(ocorrencia: Ocorrencia){
        DataManager.shared.add(ocorrencia:ocorrencia)
        coordinator.continueAferNovaOcorrencia()
        }

}
