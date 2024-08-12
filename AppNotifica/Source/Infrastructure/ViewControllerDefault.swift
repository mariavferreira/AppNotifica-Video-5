//
//  ViewControllerDefault.swift
//  AppNotifica
//
//  Created by IFBITIC7 on 07/08/24.
//

import Foundation
import UIKit

class ViewControllerDefault: UIViewController {
       
    // é executado quando está carregando
       override func viewDidLoad() {
           super.viewDidLoad()
           self.navigationController?.navigationBar.prefersLargeTitles=true
           self.navigationItem.setHidesBackButton(true, animated: false)
           
           let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(hideKeyboardByTappingOutside))
           view.addGestureRecognizer(tap)
       }
    
    @objc
    private func hideKeyboardByTappingOutside() {
        view.endEditing(true)
    }

}
