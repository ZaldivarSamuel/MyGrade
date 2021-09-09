//
//  NewClassView.swift
//  MyGrade
//
//  Created by Samuel Zaldivar on 9/1/21.
//

import Foundation
import UIKit

class NewClassView: UIView{
    
    let classInputTableView = UITableView(frame: CGRect.zero, style: .grouped)
    
    let createClassButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.setTitle("Create Class", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.gray, for: .highlighted)
        button.backgroundColor = .blue
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .white
    
        self.addSubview(classInputTableView)
        self.addSubview(createClassButton)
        
        addConstraints()
    }
    
    required init?(coder: NSCoder) { 
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Constraints
    func addConstraints(){
        
        createClassButton.translatesAutoresizingMaskIntoConstraints = false
        createClassButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor).isActive = true
        createClassButton.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        createClassButton.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        createClassButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        classInputTableView.translatesAutoresizingMaskIntoConstraints = false
        classInputTableView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        classInputTableView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        classInputTableView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        classInputTableView.bottomAnchor.constraint(equalTo: createClassButton.topAnchor).isActive = true
        
        
    }
}
