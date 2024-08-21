//
//  NovaOcorrenciaView.swift
//  AppNotifica
//
//  Created by IFBITIC7 on 14/08/24.
//

import Foundation
import UIKit

class NovaOcorrenciaView: ViewDefault {
    var viewModel: NovaOcorrenciaViewModel
    
    init(viewModel: NovaOcorrenciaViewModel){
        self.viewModel = viewModel
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Closures
    var onCameraTap: (() -> Void)?
    //MARK: - Properties
    
    lazy var imagem: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "ImagemCamera")
        
        let tapGR = UITapGestureRecognizer(target: self, action: #selector(cameraTap))
        view.addGestureRecognizer(tapGR)
        view.isUserInteractionEnabled = true
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var titleTextField = TextFieldDefault(placeholder: "Título", keyboardType: .default, returnKeyType: .next)
    
    lazy var descriptionTextField = TextFieldDefault(placeholder: "Descrição ", keyboardType: .default, returnKeyType: .next)
        
    lazy var localizationTextField = TextFieldDefault(placeholder: "Localização ", keyboardType: .default, returnKeyType: .next)
        
    lazy var statusTextField = TextFieldDefault(placeholder: "Status ", keyboardType: .default, returnKeyType: .done)
        
    lazy var saveButton =  ButtonDefault(botao: "SALVAR")
        
    
    override func setupVisualElements() {
    
        self.addSubview(imagem)
        self.addSubview(titleTextField)
        self.addSubview(descriptionTextField)
        self.addSubview(localizationTextField)
        self.addSubview(statusTextField)
        self.addSubview(saveButton)
        
        
        NSLayoutConstraint.activate([
            imagem.heightAnchor.constraint(equalToConstant: 200),
            imagem.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
            imagem.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            imagem.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
                                     
            titleTextField.widthAnchor.constraint(equalToConstant: 374),
            titleTextField.heightAnchor.constraint(equalToConstant: 60),
            titleTextField.topAnchor.constraint(equalTo: imagem.bottomAnchor, constant: 20),
            titleTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            titleTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
                                     
            descriptionTextField.widthAnchor.constraint(equalToConstant: 374),
            descriptionTextField.heightAnchor.constraint(equalToConstant: 60),
            descriptionTextField.topAnchor.constraint(equalTo: titleTextField.bottomAnchor, constant: 5),
            descriptionTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            descriptionTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
                                             
            localizationTextField.widthAnchor.constraint(equalToConstant: 374),
            localizationTextField.heightAnchor.constraint(equalToConstant: 60),
            localizationTextField.topAnchor.constraint(equalTo: descriptionTextField.bottomAnchor, constant: 5),
            localizationTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            localizationTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
                                             
            statusTextField.widthAnchor.constraint(equalToConstant: 374),
            statusTextField.heightAnchor.constraint(equalToConstant: 60),
            statusTextField.topAnchor.constraint(equalTo: localizationTextField.bottomAnchor, constant: 5),
            statusTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            statusTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
                                             
                                             
            saveButton.widthAnchor.constraint(equalToConstant: 374),
            saveButton.heightAnchor.constraint(equalToConstant: 60),
            saveButton.topAnchor.constraint(equalTo: statusTextField.bottomAnchor, constant: 20),
            saveButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 14),
            saveButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -14),
                                                                      
                                    ])
        
    }
    
    @objc
    private func cameraTap() {
        self.onCameraTap?()
    }
    
    func setImage (Image: UIImage){
        imagem.image = Image
    }
    
    @objc
    func handleSave() {
        let title = titleTextField.text ?? ""
        let description=descriptionTextField.text ?? ""
        let location = localizationTextField.text ?? ""
        let status = statusTextField.text ?? ""
        let ocorrencia = Ocorrencia(title: title, description: description,location: location, status: status)
        viewModel.didTapSave(ocorrencia:ocorrencia)
    }
    
}
