//
//  HomeViewController.swift
//  MyGrade
//
//  Created by Samuel Zaldivar on 8/31/21.
//

import Foundation
import UIKit

class HomeViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()

        let homeView = HomeView()
        self.view = homeView
        
        homeView.newClassButton.addTarget(self, action: #selector(self.newClassButtonPressed(_:)), for: .touchUpInside)
       
    }
       
    @objc func newClassButtonPressed(_ sender:UIButton!){
   
        let newClassViewController = NewClassViewController()
        
        self.present(newClassViewController, animated: true, completion: nil)
    }
}
