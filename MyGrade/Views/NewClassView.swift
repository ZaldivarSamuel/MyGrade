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

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .white
    
        self.addSubview(classInputTableView)
        
        addConstraints()
    }
    
    required init?(coder: NSCoder) { 
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Constraints
    func addConstraints(){
        classInputTableView.translatesAutoresizingMaskIntoConstraints = false
        classInputTableView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        classInputTableView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        classInputTableView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        classInputTableView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
}
