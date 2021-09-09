//
//  Class.swift
//  MyGrade
//
//  Created by Samuel Zaldivar on 9/1/21.
//

import UIKit
import CoreData

/**
 A ClassEntity holds data for a particular class as well the logic functions
 */
extension ClassEntity{
    
    /**
     Creates a new class and saves it in Core Data
     
     - Parameters:
        - name: The name of the class
     */
    public static func createClass(name: String) -> Void{
        
        //Set up Core Data
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let moc:NSManagedObjectContext = appDelegate.persistentContainer.viewContext
        
        //Creates Class and saves itg
        let newClass = ClassEntity(context: moc)
        newClass.name = name
        appDelegate.saveContext()
    }
}
