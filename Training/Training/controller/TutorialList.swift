//
//  TutorialList.swift
//  Training
//
//  Created by Anthony Thompson on 3/21/18.
//  Copyright © 2018 GSU Team 5. All rights reserved.
//
/*
import UIKit
import Alamofire

class TutorialList: UITableViewController {
    
    let tutorialURL = "http://10.250.94.39/TrainingApp/api/getTutorial.php"
    
    
    //var tutorials = [TutorialInfo]()
 
 

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
    }
    
    /*
    func getData() {
        let prefs:UserDefaults = UserDefaults.standard
        var tutorial = prefs.value(forKey: "TUTORIAL") as! NSString
        
        Alamofire.request(tutorialURL, method: .get, parameters: ["tutorial": tutorial]).responseJSON() { (data) in
            
            if let jsonResult = data as? Array<Dictionary<String, String>> {
            
            var tutorialID = jsonResult [0]["Id"]
            var tutorialName = jsonResult [0]["tutorialName"]
            var description = jsonResult [0]["description"]
            
            for result in jsonResult {
                let tutInfo = TutorialInfo()
                tutInfo.tutorialID = jsonResult [0]["Id"]
                tutInfo.tutorialName = jsonResult [0]["username"]
                tutInfo.tutorialDescription = jsonResult [0]["category"]
                self.tutorials.append(tutInfo)
                
            }
            
                DispatchQueue.main.async(group: DispatchQueue.,
                                    execute: { self.tableView.reloadData()
                })
               
           
            }
        
    }
}
 */
   
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return
    }


    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
*/
