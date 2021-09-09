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
        
        self.title = "My Grade"
        navigationController?.navigationBar.prefersLargeTitles = true

        let homeView = HomeView()
        self.view = homeView
        
        let button1 =  UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(newClassButtonPressed(_:)))
        self.navigationItem.rightBarButtonItem  = button1
        
        homeView.classListTableView.register(UITableViewCell.self, forCellReuseIdentifier: TableViewCellsIdentifier.classListCell.rawValue)
        
        homeView.classListTableView.delegate = self
        homeView.classListTableView.dataSource = self
        
    }
       
    @objc func newClassButtonPressed(_ sender:UIBarButtonItem!){
   
        let newClassViewController = NewClassViewController()
        
        let navigationController = UINavigationController(rootViewController: newClassViewController)
        
        self.present(navigationController, animated: true, completion: nil)
    }
}

//MARK: - UITableViewDelegate and DataSource
extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCellsIdentifier.classListCell.rawValue, for: indexPath)
        return cell
    }
    
    
}
