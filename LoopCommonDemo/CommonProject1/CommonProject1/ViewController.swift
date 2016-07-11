//
//  ViewController.swift
//  CommonProject1
//
//  Created by Richard Meitzler on 7/11/16.
//
//

import UIKit
import LoopCommon

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("common ver is \(Version().version())")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

