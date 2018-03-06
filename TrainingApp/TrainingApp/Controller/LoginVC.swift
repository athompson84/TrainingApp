//
//  ViewController.swift
//  TrainingApp
//
//  Created by Anthony Thompson on 3/4/18.
//  Copyright © 2018 GSU Team 5. All rights reserved.
//

import UIKit
import RealmSwift


class ViewController: UIViewController {
    
    

    @IBOutlet weak var usertext: UITextField!
    
    @IBOutlet weak var pwtxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LoginUser()
        
    }

    @IBAction func loginbtn(_ sender: Any) {
    }
    
    func LoginUser(){
        let realm = try! Realm()
        let empcheck = realm.objects(Employee.self)
        
            
        loginbtn(true)
        
        
    }
    
}

