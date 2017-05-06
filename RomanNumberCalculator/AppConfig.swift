//
//  AppConfig.swift
//  RomanNumeralCalculator
//
//  Created by iOS on 05/05/17.
//  Copyright © 2017 buddybuild. All rights reserved.
//

import Foundation
import UIKit

class AppConfig{
    
    
    var isLogged = false
    
    var userIsLogged: Bool {
        set { isLogged = newValue }
        get { return isLogged }
    }
    
    static let sharedInstance: AppConfig = {
        let instance = AppConfig()
        // setup code
        
        
        return instance
    }()
}
