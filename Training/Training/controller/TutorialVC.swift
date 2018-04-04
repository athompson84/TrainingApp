//
//  TutorialVC.swift
//  Training
//
//  Created by Anthony Thompson on 4/4/18.
//  Copyright © 2018 GSU Team 5. All rights reserved.
//

import UIKit

class TutorialVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    let departments = ["BARTENDERS", "HOST", "SERVER"]
    let tutorials = ["Make sure you offer the daily drink first","Always have a smile when customers walks in ","Have on a smile before you approach a table"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return departments.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as? TutorialTableViewCell
        
        cell?.tutorialLbl?.text = departments[indexPath.row]
        cell?.tutorialView.backgroundColor = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)
        cell?.tipLbl.text = tutorials[indexPath.row]
        
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50.0
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
