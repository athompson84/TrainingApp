//
//  TutorialTableViewCell.swift
//  Training
//
//  Created by Anthony Thompson on 4/4/18.
//  Copyright © 2018 GSU Team 5. All rights reserved.
//

import UIKit

class TutorialTableViewCell: UITableViewCell {

    @IBOutlet weak var tutorialLbl: UILabel!
    
    @IBOutlet weak var tutorialView: UIView!
    
    @IBOutlet weak var tipLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
