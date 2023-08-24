//
//  ContentsListButton.swift
//  NetflixProject
//
//  Created by ChaewonMac on 2023/08/24.
//

import UIKit

class ContentsListButton: UIButton {
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupButton(title: String) {
        var config = UIButton.Configuration.plain()
        var titleAttribute = AttributedString.init(title)
        titleAttribute.font = .systemFont(ofSize: 15, weight: .bold)
        config.attributedTitle = titleAttribute
        config.titleAlignment = .center
        config.baseForegroundColor = .white
        configuration = config
    }
    
}
