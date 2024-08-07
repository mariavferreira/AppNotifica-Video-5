//
//  HomeView.swift
//  AppNotifica
//
//  Created by IFBITIC7 on 07/08/24.
//

import Foundation
import UIKit

class HomeView: UIView {
    //MARK: - Initialize
    override init(frame: CGRect) {
        //chama o frame da superclasse
        super.init(frame: frame)
        // muda a cor de fundo do app para branco
        self.backgroundColor = .viewBackGroundColor
        setUpVisualElements()
        
    }
    
    func setUpVisualElements() {
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
