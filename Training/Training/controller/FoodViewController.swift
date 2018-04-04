//
//  FoodViewController.swift
//  Training
//
//  Created by Anthony Thompson on 4/4/18.
//  Copyright © 2018 GSU Team 5. All rights reserved.
//

import UIKit

class FoodViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    
    let food = ["Salmon","Burber","Soup","Shrimp"]
    let price = ["$15.00","$9.00","$6.00","$10.00"]
    
    
    @IBOutlet weak var foodTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        foodTableView.dataSource = self
        foodTableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return food.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = foodTableView.dequeueReusableCell(withIdentifier: "foodCell") as? FoodTableViewCell
        
        cell?.foodLbl.text = food[indexPath.row]
        cell?.foodPriceLbl.text = price[indexPath.row]
        
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
