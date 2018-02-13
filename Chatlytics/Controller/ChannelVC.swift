//
//  ChannelVC.swift
//  Chatlytics
//
//  Created by Matthew Byrne on 2/13/18.
//  Copyright © 2018 Matthew Byrne. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {
    
    // Outlets

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Adjust how much of the front screen is displayed (60pts here)
        // Want most of the back screen to show
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }

    

}
