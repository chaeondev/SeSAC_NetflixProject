//
//  LoginTextField.swift
//  NetflixProject
//
//  Created by Chaewon on 2023/09/19.
//

import UIKit

class LoginTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        borderStyle = .none
        backgroundColor = .darkGray
        layer.cornerRadius = 6
        textColor = .white
        textAlignment = .center
        font = .boldSystemFont(ofSize: 16)
    }
    
}
