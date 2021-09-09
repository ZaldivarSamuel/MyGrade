//
//  HomeView.swift
//  MyGrade
//
//  Created by Samuel Zaldivar on 8/31/21.
//

import Foundation
import UIKit

class HomeView: UIView{
    
    let classListTableView = UITableView(frame: CGRect.zero)
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createUI()
    }
    
    private func createUI(){
        self.backgroundColor = .white
        
        self.addSubview(classListTableView)
        setConstraints()
    }
    
    private func setConstraints(){
        classListTableView.translatesAutoresizingMaskIntoConstraints = false
        classListTableView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        classListTableView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        classListTableView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        classListTableView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
