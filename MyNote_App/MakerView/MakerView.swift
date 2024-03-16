//
//  MakerView.swift
//  MyNote_App
//
//  Created by A LINA on 16/3/24.
//

import UIKit

final class MakerView {
    
    static let shared = MakerView()
    
    
    func makeLabel(text: String = "",
                   font: UIFont = UIFont.systemFont(ofSize: 16, weight: .regular),
                   textColor: UIColor = .black,
                   backgroundColor: UIColor = .clear,
                   textAlignment: NSTextAlignment = .left,
                   numberOfLines: Int = 0,
                   lineBreakMode: NSLineBreakMode = .byWordWrapping,
                   translatesAutoresizingMaskIntoConstraints: Bool = false
    ) -> UILabel {

        let label = UILabel()
        label.text = text
        label.font = font
        label.textColor = textColor
        label.backgroundColor = backgroundColor
        label.textAlignment = textAlignment
        label.numberOfLines = numberOfLines
        label.lineBreakMode = lineBreakMode
        label.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
        return label
    }
    
    func makeSimpleButton(backgroundColor: UIColor = .clear,
                           title: String = "",
                           titleColor: UIColor = .white,
                          titleFont: UIFont = UIFont.systemFont(ofSize: 16, weight: .regular),
                           cornerRadius: CGFloat = 0,
                           translatesAutoresizingMaskIntoConstraints: Bool = false
    ) -> UIButton {
        let button = UIButton()
        button.backgroundColor = backgroundColor
        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.titleLabel?.font = titleFont
        button.layer.cornerRadius = cornerRadius
        button.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
        return button
    }
    
    func makerImage(imageName: String = "",
                    translatesAutoresizingMaskIntoConstraints: Bool = false
    ) -> UIImageView {
        let image = UIImageView()
        image.image = UIImage(systemName: imageName)
        image.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
        return image
    }
    
    
    
}

