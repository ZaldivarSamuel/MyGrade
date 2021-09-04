//
//  ClassNameCell.swift
//  MyGrade
//
//  Created by Samuel Zaldivar on 9/3/21.
//

import Foundation
import UIKit

class ClassNameCell: UITableViewCell{
    
    //MARK: UI Elements
    let classNameTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .red
        textField.font = UIFont.systemFont(ofSize: 20)
        return textField
    }()
    
    //MARK: Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addUIElements()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addUIElements(){
        //self.addSubview(classNameTextField)
        self.contentView.addSubview(classNameTextField)
        NSLayoutConstraint.activate([
            classNameTextField.heightAnchor.constraint(equalToConstant: 40),
            classNameTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            classNameTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            classNameTextField.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            classNameTextField.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8),
        ])
    }
}
