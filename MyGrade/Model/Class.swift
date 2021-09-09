//
//  Class.swift
//  MyGrade
//
//  Created by Samuel Zaldivar on 9/1/21.
//

import UIKit
import CoreData

extension ClassEntity{
    
    public static func createClass(name: String) -> Void{
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let moc:NSManagedObjectContext = appDelegate.persistentContainer.viewContext
        
        let newClass = ClassEntity(context: moc)
        newClass.name = name
        appDelegate.saveContext()
    }
}
