//
//  StatusLabel.swift
//  MailTestTask
//
//  Created by Артур Дохно on 09.09.2022.
//

import UIKit

class StatusLabel: UILabel {
    
    public var isValid = false {
        didSet {
            if self.isValid {
                setValidSettings()
            } else {
                setNotValidSettings()
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        text = "Check your mail"
        textColor = #colorLiteral(red: 0.9450980392, green: 0.9333333333, blue: 0.862745098, alpha: 1)
        font = UIFont(name: "Apple SD Gothic Neo", size: 16)
        adjustsFontSizeToFitWidth = true
        translatesAutoresizingMaskIntoConstraints = false 
    }
    
    private func setNotValidSettings() {
        text = "Mail is not valid. Example: name@domain.ru"
        textColor = #colorLiteral(red: 0.5215686275, green: 0.1098039216, blue: 0.05098039216, alpha: 1)
    }
    
    private func setValidSettings() {
        text = "Mail is valid"
        textColor = #colorLiteral(red: 0.1960784314, green: 0.3411764706, blue: 0.1019607843, alpha: 1)
    }
    
    public func setDefaultSettings() {
        configure()
    }
    
}
