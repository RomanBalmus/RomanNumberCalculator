//
//  LoginViewController.swift
//  RomanNumeralCalculator
//
//  Created by iOS on 05/05/17.
//  Copyright © 2017 buddybuild. All rights reserved.
//

import UIKit
import Foundation
//test with unit enabled
class LoginViewController: UIViewController, FireDBDelegate {
    
    @IBOutlet weak var receivedDataLabel: UILabel!
    var fireDb: FireDB! = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.view.isHidden=false
        fireDb = FireDB.sharedInstance
        fireDb.delegate = self
    }
    
    @IBAction func facebookSignInBtnTapped(_ sender: Any) {
        
        fireDb.checkDataForNode(node: "objects3")
    
    }
    @IBAction func closeBtnTapped(_ sender: Any) {
        AppConfig.sharedInstance.userIsLogged=true

        self.dismiss(animated: true) {
            
        }
    }
    
    func receivedData(errorString: String, dict: [String : AnyObject]) {
        if !errorString.isEmpty{
            receivedDataLabel.text = errorString
        }else{
            receivedDataLabel.text = String(describing: dict)
        }
    }
}
