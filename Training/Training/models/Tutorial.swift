//
//  TutorialCategory.swift
//  Training
//
//  Created by Anthony Thompson on 3/24/18.
//  Copyright © 2018 GSU Team 5. All rights reserved.
//

import Foundation

struct Tutorial {
    
    //var tutorialID: String?
    private(set) public var tutorialName: String?
    private(set) public var tutorialDescription: String?
    
    init(title: String)
    {
        self.tutorialName = title
    }
}
