//
//  LoginVC.swift
//  Chatlytics
//
//  Created by Matthew Byrne on 2/13/18.
//  Copyright © 2018 Matthew Byrne. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    // Outlets
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    // Actions
    @IBAction func closeBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func createAccountBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    }
    
}
