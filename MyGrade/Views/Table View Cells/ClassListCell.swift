//
//  ClassListCell.swift
//  MyGrade
//
//  Created by Samuel Zaldivar on 9/9/21.
//

import UIKit

class ClassListCell: UITableViewCell{
    
    //MARK: UI Elements
    let classNameLabel : UILabel = {
        let label = UILabel(frame: .zero)
        label.textColor = .black
        label.text = "Hello"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addUIElements()
    }
    
    private func addUIElements(){
        self.contentView.addSubview(classNameLabel)
        
        NSLayoutConstraint.activate([
            classNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            classNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            classNameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            classNameLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
