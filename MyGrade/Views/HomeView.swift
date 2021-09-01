//
//  HomeView.swift
//  MyGrade
//
//  Created by Samuel Zaldivar on 8/31/21.
//

import Foundation
import UIKit

class HomeView: UIView{
    
    let newClassButton = UIButton(frame: .zero)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createUI()
    }
    
    private func createUI(){
        self.backgroundColor = .white
        
        newClassButton.setTitle("New Class", for: .normal)
        newClassButton.setTitleColor(.systemBlue, for: .normal)
        newClassButton.setTitleColor(.systemFill, for: .highlighted)
        
        
        self.addSubview(newClassButton)
        
        newClassButton.translatesAutoresizingMaskIntoConstraints = false
        newClassButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        newClassButton.heightAnchor.constraint(equalToConstant: 75).isActive = true
        newClassButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        newClassButton.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
