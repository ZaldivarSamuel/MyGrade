//
//  NewClassViewController.swift
//  MyGrade
//
//  Created by Samuel Zaldivar on 9/1/21.
//

import UIKit
import CoreData

class NewClassViewController: UIViewController{
    
    let newClassView = NewClassView()
    
    var moc:NSManagedObjectContext!
    let appDelegate = UIApplication.shared.delegate as? AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        moc = appDelegate?.persistentContainer.viewContext
        
        self.view = newClassView
        self.title = "New Class"
        
        /*
         Buttons Setup
         */
        let cancelButton = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(cancelButtonPressed))
        self.navigationItem.leftBarButtonItem = cancelButton
        
        newClassView.createClassButton.addTarget(self, action: #selector(createClassButtonPressed), for: .touchUpInside)
        
        
        /*
         Table View Setup
         */
        newClassView.classInputTableView.register(ClassNameCell.self, forCellReuseIdentifier: "class-name-cell")
        
        newClassView.classInputTableView.delegate = self
        newClassView.classInputTableView.dataSource = self
        
//        let i = ClassEntity(context: moc)
//        i.name = "Test2"
//        appDelegate?.saveContext()
//
//
        let dataRequeest:NSFetchRequest<ClassEntity> = ClassEntity.fetchRequest()
        do {
            let tests = try moc.fetch(dataRequeest)
            for t in tests{
                t.test()
                print(t.name)
            }

                //try print(moc.fetch(dataRequeest))
           }catch {
               print("Could not load data")
           }

    }
    
    //MARK: - Button Actions
    @objc func cancelButtonPressed(){
        navigationController?.popViewController(animated: true)

        dismiss(animated: true, completion: nil)
    }
    
    @objc func createClassButtonPressed(){
        print("Pressed")
        ClassEntity.createClass(conext: moc, name: "Button Pressed")
    }
}


//MARK: -  UITableView Delegate and Datasource
extension NewClassViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "class-name-cell", for: indexPath) as! ClassNameCell
        cell.classNameTextField.delegate = self
        cell.selectionStyle = .none
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }
}

//MARK: - UITextField Delegate
extension NewClassViewController: UITextFieldDelegate{
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("Typing")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
