//
//  ViewController2.swift
//  DelegatePatternPOC
//
//  Created by Sajith Konara on 8/8/19.
//  Copyright © 2019 Sajith Konara. All rights reserved.
//

import UIKit

protocol EmailSubmissionDelegate {
    func emailSubmitted(email:String)
}

class ViewController2: UIViewController {

    @IBOutlet weak var defultEmailTextField: UITextField!
    var emailSubmissionDelegate:EmailSubmissionDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func okButtonOnTapped(_ sender: Any) {
        emailSubmissionDelegate?.emailSubmitted(email: defultEmailTextField.text ?? "N/A")
        self.dismiss(animated: true, completion: nil)
    }
    
  
}
