//
//  Settings_Cell.swift
//  MyNote_App
//
//  Created by A LINA on 15/3/24.
//

import UIKit

class Settings_Cell: UITableViewCell {
    
    private lazy var icone_Img = MakerView.shared.makerImage()
    
    private lazy var titleLbl = MakerView.shared.makeLabel(font: .systemFont(ofSize: 18, weight: .regular))
    
    private lazy var actionBtn = UIButton(type: .system)
    
    private lazy var modeSwitch = UISwitch()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupUI()
        contentView.layer.cornerRadius = 12
        contentView.backgroundColor = .systemGray6
    }
    
    private func setupUI(){
        
        contentView.addSubview(icone_Img)
        NSLayoutConstraint.activate([
            icone_Img.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            icone_Img.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            icone_Img.heightAnchor.constraint(equalToConstant: 22),
            icone_Img.widthAnchor.constraint(equalToConstant: 22)
        ])
        
        contentView.addSubview(titleLbl)
        NSLayoutConstraint.activate([
            titleLbl.centerYAnchor.constraint(equalTo: icone_Img.centerYAnchor),
            titleLbl.leadingAnchor.constraint(equalTo: icone_Img.trailingAnchor, constant: 16)
        ])
    }
    
    func setUp(settings: Setting) {
        
        icone_Img.image = settings.icone_Img
        icone_Img.tintColor = .black
        titleLbl.text = settings.title
        
        if settings.actionTap {
            setUpActionBtn()
        }
        if settings.switchTap {
            setUpSwitch()
        }
    }

    private func setUpActionBtn() {
        actionBtn.setTitle("English", for: .normal)
        actionBtn.setTitleColor(.lightGray, for: .normal)
        actionBtn.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        actionBtn.tintColor = .black
        actionBtn.semanticContentAttribute = .forceRightToLeft
        
        
        contentView.addSubview(actionBtn)
        actionBtn.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            actionBtn.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            actionBtn.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12)
        ])
    }

    private func setUpSwitch() {
        
        contentView.addSubview(modeSwitch)
        modeSwitch.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            modeSwitch.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            modeSwitch.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            modeSwitch.heightAnchor.constraint(equalToConstant: 20)
        ])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
