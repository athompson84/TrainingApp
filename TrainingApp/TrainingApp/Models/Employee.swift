//
//  Employee.swift
//  TrainingApp
//
//  Created by Anthony Thompson on 3/6/18.
//  Copyright © 2018 GSU Team 5. All rights reserved.
//

import Foundation
import RealmSwift

class Employee: Object{
    
    convenience override init(value: Any) {
        self.init()
        
    }
    
    @objc dynamic var ID = ""
    @objc dynamic var firstname = ""
    @objc dynamic var lastname = ""
}
