//
//  ViewController.swift
//  Training
//
//  Created by Anthony Thompson on 3/21/18.
//  Copyright © 2018 GSU Team 5. All rights reserved.
//

import UIKit
import Alamofire

class LoginVC: UIViewController {
    
    let URL_USER_LOGIN = "http://127.0.0.1/Trainingapp/api/login.php"
    
    //the defaultvalues to store user data
    let defaultValues = UserDefaults.standard
    
   
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var passwrdlbl: UILabel!
    
    @IBOutlet weak var userlbl: UILabel!
    
    @IBAction func LoginBtn(_ sender: Any) {
        
        
        let parameters: Parameters=[
            "username":username.text!,
            "password":password.text!
        ]
        
        
        
        //making a post request
        Alamofire.request(URL_USER_LOGIN, method: .post, parameters: parameters).responseJSON
            {
                response in
                //printing response
                print(response)
                
                //getting the json value from the server
                if let result = response.result.value {
                    let jsonData = result as! NSDictionary
                    
                    //if there is no error
                    if(!(jsonData.value(forKey: "error") as! Bool)){
                        
                        //getting the user from response
                        let user = jsonData.value(forKey: "user") as! NSDictionary
                        
                        //getting user values
                        let userId = user.value(forKey: "id") as! Int
                        let userName = user.value(forKey: "username") as! String
                        let userEmail = user.value(forKey: "email") as! String
                        let userPhone = user.value(forKey: "phone") as! String
                        
                        //saving user values to defaults
                        self.defaultValues.set(userId, forKey: "userid")
                        self.defaultValues.set(userName, forKey: "username")
                        self.defaultValues.set(userEmail, forKey: "useremail")
                        self.defaultValues.set(userPhone, forKey: "userphone")
                        
                        //switching the screen
                        let profileViewController = self.storyboard?.instantiateViewController(withIdentifier: "TutorialMenuVC") as! TutorialMenuVC
                        self.navigationController?.pushViewController(profileViewController, animated: true)
                        
                        self.dismiss(animated: false, completion: nil)
                    }else {
                        if ((self.username.text?.isEmpty)! || (self.passwrdlbl.text?.isEmpty)!) {
                            self.userlbl.isHidden = false
                            self.passwrdlbl.isHidden = false
                            
                        }
                    }                }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let backButton = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.plain, target: navigationController, action: nil)
        navigationItem.leftBarButtonItem = backButton
        
        // Do any additional setup after loading the view, typically from a nib.
        
        //if user is already logged in switching to profile screen
        if defaultValues.string(forKey: "username") != nil{
            let profileViewController = self.storyboard?.instantiateViewController(withIdentifier: "TutorialMenuVC") as! TutorialMenuVC
            self.navigationController?.pushViewController(profileViewController, animated: true)
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

