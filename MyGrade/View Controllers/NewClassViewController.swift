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
    let sectionRows = [5, 2]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view = newClassView
        self.title = "New Class"
    
        let cancelButton = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(cancelButtonPressed))
        self.navigationItem.leftBarButtonItem = cancelButton
        
        newClassView.classInputTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        newClassView.classInputTableView.delegate = self
        newClassView.classInputTableView.dataSource = self
    }
    
    @objc func cancelButtonPressed(){
        navigationController?.popViewController(animated: true)

        dismiss(animated: true, completion: nil)
    }
}


//MARK: -  UITableView Delegate and Datasource
extension NewClassViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sectionRows[section]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }
}
