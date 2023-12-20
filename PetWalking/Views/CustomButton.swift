//
//  CustomButton.swift
//  PetWalking
//
//  Created by Muslim on 14.12.2023.
//

import UIKit

class CustomButton: UIButton {
    
    init(title: String, backgroundColor: UIColor, titleColor: UIColor, fontSize: CGFloat) {
        super.init(frame: .zero)
        self.setTitle(title, for: .normal)
        self.layer.cornerRadius = 30
        self.titleLabel?.font = .systemFont(ofSize: fontSize)
        
        self.backgroundColor = backgroundColor
        self.setTitleColor(titleColor, for: .normal)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
