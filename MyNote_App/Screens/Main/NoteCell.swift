//
//  NoteCell.swift
//  MyNote_App
//
//  Created by A LINA on 14/3/24.
//

import UIKit

class NoteCell: UICollectionViewCell {
    
    static var reuseId = "note_cell"
    
    private lazy var titleLabel = MakerView.shared.makeLabel(font: .systemFont(ofSize: 12, weight: .bold))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupConstraints()
        contentView.layer.cornerRadius = 12
    }
    
    private func setupConstraints(){
        
        contentView.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10)
        ])
    }
    
    func setup(notes: Note) {
        titleLabel.text = notes.title
        contentView.backgroundColor = notes.bgColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
