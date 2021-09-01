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
        
        homeView.newClassButton.addTarget(self, action: #selector(self.buttonAction(_:)), for: .touchUpInside)
       
    }
       
    @objc func buttonAction(_ sender:UIButton!){
        print("Button tapped")
    }
}
