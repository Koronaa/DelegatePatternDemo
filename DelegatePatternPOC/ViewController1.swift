//
//  ViewController.swift
//  DelegatePatternPOC
//
//  Created by Sajith Konara on 8/8/19.
//  Copyright © 2019 Sajith Konara. All rights reserved.
//

import UIKit

class ViewController1: UIViewController,EmailSubmissionDelegate {
    
    @IBOutlet weak var emailLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func emailSubmitted(email: String) {
        emailLabel.text = "Default Email: \(email)"
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc2 = segue.destination as! ViewController2
        vc2.emailSubmissionDelegate = self
    }

   
    
}

