//
//  Tutorials.swift
//  Training
//
//  Created by Anthony Thompson on 3/21/18.
//  Copyright © 2018 GSU Team 5. All rights reserved.
//

import UIKit

class TutorialView: UITableViewCell {
    
    @IBOutlet weak var tutorialName: UILabel!
    @IBOutlet weak var tutorialDescription: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
