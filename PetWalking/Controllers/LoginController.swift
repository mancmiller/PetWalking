//
//  LoginController.swift
//  PetWalking
//
//  Created by Muslim on 12.12.2023.
//

import UIKit

class LoginController: UIViewController {
    
    // MARK: - UI Components
    
    private let backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "backgroundImage")
        return imageView
    }()
    
    private let loginLabel: UILabel = {
        let label = UILabel()
        label.text = "Вход"
        label.font = UIFont.systemFont(ofSize: 24)
        return label
    }()
    
    private let emailField = CustomTextField(fieldType: .email)
    private let passwordField = CustomTextField(fieldType: .password)
    
    private let continueButton = CustomButton(title: "Далее", backgroundColor: UIColor(named: "AccentColor")!, titleColor: .white, fontSize: 20)
    private let forgotPasswordButton = CustomButton(title: "Восстановить пароль", backgroundColor: .clear, titleColor: .lightGray, fontSize: 14)
    private let registrationButton = CustomButton(title: "Регистрация", backgroundColor: .clear, titleColor: .lightGray, fontSize: 14)
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        
        self.continueButton.addTarget(self, action: #selector(didTapContinueButton), for: .touchUpInside)
        self.forgotPasswordButton.addTarget(self, action: #selector(didTapForgotPasswordButton), for: .touchUpInside)
        self.registrationButton.addTarget(self, action: #selector(didTapRegistrationButton), for: .touchUpInside)
    }
    
    // MARK: - UI Setup
    private func setupUI() {
        
        self.view.addSubview(backgroundImageView)
        self.view.addSubview(loginLabel)
        self.view.addSubview(emailField)
        self.view.addSubview(passwordField)
        self.view.addSubview(continueButton)
        self.view.addSubview(forgotPasswordButton)
        self.view.addSubview(registrationButton)
        
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        loginLabel.translatesAutoresizingMaskIntoConstraints = false
        emailField.translatesAutoresizingMaskIntoConstraints = false
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        continueButton.translatesAutoresizingMaskIntoConstraints = false
        forgotPasswordButton.translatesAutoresizingMaskIntoConstraints = false
        registrationButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            backgroundImageView.topAnchor.constraint(equalTo: self.view.topAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            
            loginLabel.bottomAnchor.constraint(equalTo: emailField.topAnchor, constant: -20),
            loginLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            
            emailField.bottomAnchor.constraint(equalTo: passwordField.topAnchor, constant: -20),
            emailField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            emailField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            emailField.centerXAnchor.constraint(equalTo: backgroundImageView.centerXAnchor),
            emailField.heightAnchor.constraint(equalToConstant: 60),
            
            passwordField.bottomAnchor.constraint(equalTo: continueButton.topAnchor, constant: -20),
            passwordField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            passwordField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            passwordField.centerXAnchor.constraint(equalTo: backgroundImageView.centerXAnchor),
            passwordField.heightAnchor.constraint(equalToConstant: 60),
            
            continueButton.bottomAnchor.constraint(equalTo: forgotPasswordButton.topAnchor, constant: -20),
            continueButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            continueButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            continueButton.centerXAnchor.constraint(equalTo: backgroundImageView.centerXAnchor),
            continueButton.heightAnchor.constraint(equalToConstant: 60),
            
            forgotPasswordButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            forgotPasswordButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            registrationButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            registrationButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
        ])
    }
    
    // MARK: - Selectors
    @objc private func didTapContinueButton() {
        let vc =  HomeController()
        vc.modalPresentationStyle = .fullScreen
        let nc = UINavigationController(rootViewController: vc)
        nc.modalPresentationStyle = .fullScreen
        self.present(nc, animated: false)
    }
    @objc private func didTapForgotPasswordButton() {
        let vc =  ForgotPasswordController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapRegistrationButton() {
        let vc =  RegistrationController ()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
