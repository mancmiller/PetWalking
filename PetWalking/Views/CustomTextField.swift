//
//  CustomTextField.swift
//  PetWalking
//
//  Created by Muslim on 13.12.2023.
//

import UIKit

class CustomTextField: UITextField {

    enum CustomTextFieldType {
        case email
        case password
        case name
        case location
        case phoneNumber
        case about
    }
    
    private let authFieldType: CustomTextFieldType
    
    init(fieldType: CustomTextFieldType) {
        self.authFieldType = fieldType
        super.init(frame: .zero)
        self.backgroundColor = .systemBackground
        
        self.layer.borderColor = UIColor.systemGray5.cgColor
        self.layer.borderWidth = 1.0
        self.layer.cornerRadius = 10
        self.returnKeyType = .done
        self.autocorrectionType = .no
        self.autocapitalizationType = .none
        
        self.leftViewMode = .always
        self.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: self.frame.height))
        
        switch fieldType {
            
        case .email:
            self.placeholder = "E-mail"
            self.keyboardType = .emailAddress
            self.textContentType = .emailAddress
        case .password:
            self.placeholder = "Пароль"
            self.textContentType = .oneTimeCode
            self.isSecureTextEntry = true
        case .name:
            self.placeholder = "Имя"
        case .location:
            self.placeholder = "Местоположение"
        case .phoneNumber:
            self.placeholder = "Телефон"
        case .about:
            self.placeholder = "О себе"
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
