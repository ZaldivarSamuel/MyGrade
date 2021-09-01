//
//  Class.swift
//  MyGrade
//
//  Created by Samuel Zaldivar on 9/1/21.
//

import Foundation

class Class{
    
    private var className = ""
    
    init(cn: String){
        self.className = cn
    }
    
    public func setClassName(cn: String) -> Void{
        self.className = cn
    }
    
    public func getClassName() -> String{
        return self.className
    }
}
