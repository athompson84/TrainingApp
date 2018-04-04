//
//  DrinkViewController.swift
//  Training
//
//  Created by Anthony Thompson on 4/4/18.
//  Copyright © 2018 GSU Team 5. All rights reserved.
//

import UIKit

class DrinkViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let drinks = ["Jack Daniels","Crown Royal","Patron","Gin"]
    let drinkPrice = ["8.00","6.00","6.50","5.00"]

    @IBOutlet weak var drinkTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        drinkTableView.delegate = self
        drinkTableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return drinks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = drinkTableView.dequeueReusableCell(withIdentifier: "drinkCell") as? DrinkTableViewCell
        
        cell?.drinkLbl.text = drinks[indexPath.row]
        cell?.drinkPriceLbl.text = drinkPrice[indexPath.row]
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70.0
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
