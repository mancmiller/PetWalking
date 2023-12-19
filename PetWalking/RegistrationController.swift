//
//  RegistrationController.swift
//  PetWalking
//
//  Created by Muslim on 12.12.2023.
//

import UIKit

class RegistrationController: UIViewController {
    
    // MARK: - UI Components
    
//    private let mainScrollView: UIScrollView = {
//       let scrollView = UIScrollView()
//        scrollView.showsVerticalScrollIndicator = false
//        return scrollView
//    }()
//    
//    private let stackViewContainer: UIStackView = {
//       let stackView = UIStackView()
//        stackView.distribution = .fillEqually
//        stackView.alignment = .center
//        stackView.axis = .vertical
//        stackView.spacing = 20
//        return stackView
//    }()
//    
//    private let sexButtonsStackView: UIStackView = {
//       let stackView = UIStackView()
//        stackView.distribution = .fillEqually
//        stackView.alignment = .center
//        stackView.axis = .horizontal
//        stackView.spacing = 20
//        return stackView
//    }()
    
    
    private let registrationImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "registrationImage")
        return imageView
    }()
    
    private let maleButton: UIButton = {
        var configuration = UIButton.Configuration.plain()
        configuration.cornerStyle = .capsule
        configuration.title = "Мужчина"
        configuration.image = UIImage(named: "male")
        configuration.background.strokeWidth = 1
        configuration.background.strokeColor = UIColor.systemGray5
        configuration.baseBackgroundColor = .clear
        configuration.baseForegroundColor = UIColor(named: "AccentColor")
        configuration.imagePadding = 8
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 4, leading: -8, bottom: 4, trailing: 20)
        
        let button = UIButton(configuration: configuration, primaryAction: nil)
        return button
    }()
    
    private let femaleButton: UIButton = {
        var configuration = UIButton.Configuration.plain()
        configuration.cornerStyle = .capsule
        configuration.title = "Женщина"
        configuration.image = UIImage(named: "female")
        configuration.background.strokeWidth = 1
        configuration.background.strokeColor = UIColor.systemGray5
        configuration.baseBackgroundColor = .clear
        configuration.baseForegroundColor = UIColor(named: "AccentPink")
        configuration.imagePadding = 8
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 4, leading: -8, bottom: 4, trailing: 20)
        
        let button = UIButton(configuration: configuration, primaryAction: nil)
        return button
    }()
    
    private let nameField = CustomTextField(fieldType: .name)
    private let emailField = CustomTextField(fieldType: .email)
    private let locationField = CustomTextField(fieldType: .location)
    private let phoneNumberField = CustomTextField(fieldType: .phoneNumber)
    private let passwordField = CustomTextField(fieldType: .password)
    private let repeatPasswordField = CustomTextField(fieldType: .password)
    
    private let continueButton = CustomButton(title: "Далее", backgroundColor: UIColor(named: "AccentColor")!, titleColor: .white, fontSize: 20)
    
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        self.setupUI()
    }
    
    // MARK: - UI Setup
    private func setupUI() {
        
        let sexButtonsStackView = UIStackView(arrangedSubviews: [maleButton, femaleButton])
        sexButtonsStackView.distribution = .fillEqually
        sexButtonsStackView.alignment = .center
        sexButtonsStackView.axis = .horizontal
        sexButtonsStackView.spacing = 20
        
        let mainScrollView = UIScrollView()
        mainScrollView.showsVerticalScrollIndicator = false
        mainScrollView.contentInsetAdjustmentBehavior = .never
        mainScrollView.contentInset.bottom = 20
        
        
        self.view.addSubview(mainScrollView)
        
        mainScrollView.addSubview(registrationImageView)
        mainScrollView.addSubview(sexButtonsStackView)
        mainScrollView.addSubview(nameField)
        mainScrollView.addSubview(emailField)
        mainScrollView.addSubview(locationField)
        mainScrollView.addSubview(phoneNumberField)
        mainScrollView.addSubview(passwordField)
        mainScrollView.addSubview(repeatPasswordField)
        mainScrollView.addSubview(continueButton)
        
        mainScrollView.translatesAutoresizingMaskIntoConstraints = false
        registrationImageView.translatesAutoresizingMaskIntoConstraints = false
        sexButtonsStackView.translatesAutoresizingMaskIntoConstraints = false
        maleButton.translatesAutoresizingMaskIntoConstraints = false
        femaleButton.translatesAutoresizingMaskIntoConstraints = false
        nameField.translatesAutoresizingMaskIntoConstraints = false
        emailField.translatesAutoresizingMaskIntoConstraints = false
        locationField.translatesAutoresizingMaskIntoConstraints = false
        phoneNumberField.translatesAutoresizingMaskIntoConstraints = false
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        repeatPasswordField.translatesAutoresizingMaskIntoConstraints = false
        continueButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            mainScrollView.topAnchor.constraint(equalTo: view.topAnchor),
            mainScrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mainScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mainScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            registrationImageView.topAnchor.constraint(equalTo: mainScrollView.topAnchor),
            registrationImageView.leadingAnchor.constraint(equalTo: mainScrollView.leadingAnchor),
            registrationImageView.trailingAnchor.constraint(equalTo: mainScrollView.trailingAnchor),
            
            sexButtonsStackView.topAnchor.constraint(equalTo: registrationImageView.bottomAnchor, constant: 20),
            sexButtonsStackView.leadingAnchor.constraint(equalTo: mainScrollView.leadingAnchor, constant: 16),
            sexButtonsStackView.trailingAnchor.constraint(equalTo: mainScrollView.trailingAnchor, constant: -16),
            sexButtonsStackView.heightAnchor.constraint(equalToConstant: 48),
            
            maleButton.topAnchor.constraint(equalTo: sexButtonsStackView.topAnchor),
            maleButton.bottomAnchor.constraint(equalTo: sexButtonsStackView.bottomAnchor),
            
            femaleButton.topAnchor.constraint(equalTo: sexButtonsStackView.topAnchor),
            femaleButton.bottomAnchor.constraint(equalTo: sexButtonsStackView.bottomAnchor),
            
            nameField.topAnchor.constraint(equalTo: sexButtonsStackView.bottomAnchor, constant: 20),
            nameField.leadingAnchor.constraint(equalTo: mainScrollView.leadingAnchor, constant: 16),
            nameField.trailingAnchor.constraint(equalTo: mainScrollView.trailingAnchor, constant: -16),
            nameField.centerXAnchor.constraint(equalTo: mainScrollView.centerXAnchor),
            nameField.heightAnchor.constraint(equalToConstant: 60),
            
            emailField.topAnchor.constraint(equalTo: nameField.bottomAnchor, constant: 20),
            emailField.leadingAnchor.constraint(equalTo: mainScrollView.leadingAnchor, constant: 16),
            emailField.trailingAnchor.constraint(equalTo: mainScrollView.trailingAnchor, constant: -16),
            emailField.centerXAnchor.constraint(equalTo: mainScrollView.centerXAnchor),
            emailField.heightAnchor.constraint(equalToConstant: 60),
            
            locationField.topAnchor.constraint(equalTo: emailField.bottomAnchor, constant: 20),
            locationField.leadingAnchor.constraint(equalTo: mainScrollView.leadingAnchor, constant: 16),
            locationField.trailingAnchor.constraint(equalTo: mainScrollView.trailingAnchor, constant: -16),
            locationField.centerXAnchor.constraint(equalTo: mainScrollView.centerXAnchor),
            locationField.heightAnchor.constraint(equalToConstant: 60),
            
            phoneNumberField.topAnchor.constraint(equalTo: locationField.bottomAnchor, constant: 20),
            phoneNumberField.leadingAnchor.constraint(equalTo: mainScrollView.leadingAnchor, constant: 16),
            phoneNumberField.trailingAnchor.constraint(equalTo: mainScrollView.trailingAnchor, constant: -16),
            phoneNumberField.centerXAnchor.constraint(equalTo: mainScrollView.centerXAnchor),
            phoneNumberField.heightAnchor.constraint(equalToConstant: 60),
            
            passwordField.topAnchor.constraint(equalTo: phoneNumberField.bottomAnchor, constant: 20),
            passwordField.leadingAnchor.constraint(equalTo: mainScrollView.leadingAnchor, constant: 16),
            passwordField.trailingAnchor.constraint(equalTo: mainScrollView.trailingAnchor, constant: -16),
            passwordField.centerXAnchor.constraint(equalTo: mainScrollView.centerXAnchor),
            passwordField.heightAnchor.constraint(equalToConstant: 60),
            
            repeatPasswordField.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 20),
            repeatPasswordField.leadingAnchor.constraint(equalTo: mainScrollView.leadingAnchor, constant: 16),
            repeatPasswordField.trailingAnchor.constraint(equalTo: mainScrollView.trailingAnchor, constant: -16),
            repeatPasswordField.centerXAnchor.constraint(equalTo: mainScrollView.centerXAnchor),
            repeatPasswordField.heightAnchor.constraint(equalToConstant: 60),
            
            continueButton.topAnchor.constraint(equalTo: repeatPasswordField.bottomAnchor, constant: 20),
            continueButton.leadingAnchor.constraint(equalTo: mainScrollView.leadingAnchor, constant: 16),
            continueButton.trailingAnchor.constraint(equalTo: mainScrollView.trailingAnchor, constant: -16),
            continueButton.bottomAnchor.constraint(equalTo: mainScrollView.bottomAnchor),
            continueButton.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
}

