//
//  TextFieldDefault.swift
//  AppNotifica
//
//

import Foundation
import UIKit

class TextFieldDefault: UITextField{
    
    init(placeholder: String, keyboardType: UIKeyboardType = .default, returnKeyType: UIReturnKeyType = .default) {
          super.init(frame: .zero)
          
        initDefault(placeholder: placeholder, keyboardType: keyboardType, returnKeyType: returnKeyType)
      }
    
  
    private func initDefault(placeholder: String, keyboardType: UIKeyboardType, returnKeyType: UIReturnKeyType) {
        self.backgroundColor = .textFieldBackGroundColor
        self.placeholder = placeholder
        self.translatesAutoresizingMaskIntoConstraints = false
        self.keyboardType = keyboardType
       }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
