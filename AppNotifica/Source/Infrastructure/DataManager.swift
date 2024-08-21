//
//  DataManager.swift
//  AppNotifica
//
//  Created by IFBITIC7 on 21/08/24.
//

import Foundation

class DataManager {
    static var shared: DataManager = DataManager()
    
    var ocorrencias: [Ocorrencia] = []
    
    private init ( ) {
        ocorrencias = [.init(title: "Ocorrência #1", description: "Descrição", location: "Campus", status: "Aberta"),
                       .init(title: "Ocorrência #2", description: "Descrição", location: "Campus", status: "Aberta")]
    }
    
    func add(ocorrencia: Ocorrencia){
        ocorrencias.append(ocorrencia)
    }
}
