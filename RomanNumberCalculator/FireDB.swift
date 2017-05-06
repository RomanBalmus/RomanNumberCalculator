//
//  FireDB.swift
//  RomanNumeralCalculator
//
//  Created by iOS on 05/05/17.
//  Copyright © 2017 buddybuild. All rights reserved.
//

import Foundation
import FirebaseDatabase

class FireDB {
    
    var delegate:FireDBDelegate! = nil

    
    let ref = FIRDatabase.database().reference()

    
    static let sharedInstance: FireDB = {
        let instance = FireDB()
        // setup code
        
        return instance
    }()
    
    
    func checkDataForNode(node: String){
        ref.child(node).observeSingleEvent(of: .value, with: { (datasnapshot) in
            
            if datasnapshot.exists(){
                let postDict = datasnapshot.value as? [String : AnyObject] ?? [:]
                print("snapshot: \(postDict)")
                self.delegate!.receivedData(errorString: "", dict:postDict)

            }
        }){ (error) in
            print(error.localizedDescription)
            self.delegate!.receivedData(errorString: error.localizedDescription, dict: [:])
        }
    }
}
protocol FireDBDelegate{
    func receivedData(errorString:String,dict:[String : AnyObject])
}
