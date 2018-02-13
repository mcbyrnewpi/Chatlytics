//
//  CreateAccountVC.swift
//  Chatlytics
//
//  Created by Matthew Byrne on 2/13/18.
//  Copyright © 2018 Matthew Byrne. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    

}
