//
//  ForgotPasswordController.swift
//  PetWalking
//
//  Created by Muslim on 12.12.2023.
//

import UIKit

class ForgotPasswordController: UIViewController {

    // MARK: - UI Components
    private let emailField = CustomTextField(fieldType: .email)
    
    private let descriptionLabel: UILabel = {
       let label = UILabel()
        label.text = "Пожалуйста, укажите e-mail, который вы использовали для входа в Petapp для того чтобы мы напомнили ваш пароль."
        label.font = .systemFont(ofSize: 12)
        label.textColor = .lightGray
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    private let sendEmailButton = CustomButton(title: "Отправить код", backgroundColor: UIColor(named: "AccentColor")!, titleColor: .white, fontSize: 20)
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        self.setupUI()
    }
    
    // MARK: - UI Setup
    private func setupUI() {
        self.view.addSubview(emailField)
        self.view.addSubview(descriptionLabel)
        self.view.addSubview(sendEmailButton)
        
        emailField.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        sendEmailButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            emailField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            emailField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            emailField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -40),
            emailField.heightAnchor.constraint(equalToConstant: 60),
            
            descriptionLabel.topAnchor.constraint(equalTo: emailField.bottomAnchor, constant: 10),
            descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            sendEmailButton.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 20),
            sendEmailButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            sendEmailButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
            sendEmailButton.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
}
