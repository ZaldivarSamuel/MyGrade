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
    }
}
