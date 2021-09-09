//
//  NewClassViewController.swift
//  MyGrade
//
//  Created by Samuel Zaldivar on 9/1/21.
//

import UIKit
import CoreData

/**
 Contains the ViewController that allows the user to enter information for a new class and saves it
 */
class NewClassViewController: UIViewController{
    
    ///The View
    let newClassView = NewClassView()
    
    //MARK: - ClassEntity Values
    
    /// The class name
    private var className = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
         View Setup
         */
        
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
        newClassView.classInputTableView.register(ClassNameCell.self, forCellReuseIdentifier: TableViewCellsIdentifier.newClassNameCell.rawValue)
        
        newClassView.classInputTableView.delegate = self
        newClassView.classInputTableView.dataSource = self

    }
    
    //MARK: - Button Actions
    
    ///Dismiss ViewController
    @objc func cancelButtonPressed(){
        navigationController?.popViewController(animated: true)

        dismiss(animated: true, completion: nil)
    }
    
    /**
     When createClassButton is pressed, this function will start to create and save the class
     */
    @objc func createClassButtonPressed(){
        
        ClassEntity.createClass(name: className)
    }
}


//MARK: -  UITableView Delegate and Datasource
extension NewClassViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCellsIdentifier.newClassNameCell.rawValue, for: indexPath) as! ClassNameCell
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
  

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        //Saves the text from a textfield to the correct ClassEntity data value
        if textField.tag == TextFieldTags.newClassTextField.rawValue{
            print("Typing Class Name")
            print(textField.text!)
            className = textField.text ?? ""
        }
        
        return true
    }
}
