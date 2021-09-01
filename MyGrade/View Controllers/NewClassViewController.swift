//
//  NewClassViewController.swift
//  MyGrade
//
//  Created by Samuel Zaldivar on 9/1/21.
//

import Foundation
import UIKit

class NewClassViewController: UIViewController{
    
    let newClassView = NewClassView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view = newClassView
        self.title = "New Class"
        
        let cancelButton = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(cancelButtonPressed))
        self.navigationItem.leftBarButtonItem = cancelButton
    }
    
    @objc func cancelButtonPressed(){
        navigationController?.popViewController(animated: true)

        dismiss(animated: true, completion: nil)
    }
}
