//
//  HomeViewController.swift
//  MyGrade
//
//  Created by Samuel Zaldivar on 8/31/21.
//

import Foundation
import UIKit
import CoreData

class HomeViewController: UIViewController{
    
    var classes : [ClassEntity] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getClasses()
        
        self.title = "My Grade"
        navigationController?.navigationBar.prefersLargeTitles = true

        let homeView = HomeView()
        self.view = homeView
        
        let button1 =  UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(newClassButtonPressed(_:)))
        self.navigationItem.rightBarButtonItem  = button1
        
        homeView.classListTableView.register(ClassListCell.self, forCellReuseIdentifier: TableViewCellsIdentifier.classListCell.rawValue)
        
        homeView.classListTableView.delegate = self
        homeView.classListTableView.dataSource = self
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("Appear")
    }
    
    private func getClasses(){
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let moc:NSManagedObjectContext = appDelegate.persistentContainer.viewContext
        let dataRequeest:NSFetchRequest<ClassEntity> = ClassEntity.fetchRequest()
                do {
                    let tests = try moc.fetch(dataRequeest)
                    for t in tests{
                        classes.append(t)
                       print(t.name)
//                        moc.delete(t)
//                        appDelegate.saveContext()
                    }

                        //try print(moc.fetch(dataRequeest))
                   }catch {
                       print("Could not load data")
                   }
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
        return classes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCellsIdentifier.classListCell.rawValue, for: indexPath) as! ClassListCell
        cell.classNameLabel.text = classes[indexPath.row].name
        //cell.backgroundColor = .blue
        return cell
    }
    
    
}
