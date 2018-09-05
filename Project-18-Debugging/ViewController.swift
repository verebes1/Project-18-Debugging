//
//  ViewController.swift
//  Project-18-Debugging
//
//  Created by verebes on 31/08/2018.
//  Copyright © 2018 A&D Progress. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(1, 2, 3, 4, 5, separator: "-")
        print("Some message", terminator: "")
        
        assert(1 == 1, "Math ok!")
        //assert(1 == 2, "Math failure!") //If assertion fails then message gets shown in debug
        //assertions are removed automatically when you ship to appstore
        assert(myReallySlowMethod() == true, "The slow method returned false, which is a bad thing!")
        
        for i in 1 ... 100 {
            print("Got number \(i)")
        }
    }


    
    func myReallySlowMethod() -> Bool {
        return true
    }
}

