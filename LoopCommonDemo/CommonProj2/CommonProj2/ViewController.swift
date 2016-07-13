//
//  ViewController.swift
//  CommonProj2
//
//  Created by Richard Meitzler on 7/11/16.
//
//

import UIKit
import LoopCommon
import LoopCommonUI

class ViewController: UIViewController {
    
    var isAuthenticated = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("LoopCommon is \(Version().version())")
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)

        if !isAuthenticated {
            performSegueWithIdentifier("InitialLoginSegue", sender: self)
        }else{
            performSegueWithIdentifier("GreenVCSegue", sender: self)
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "InitialLoginSegue" {
            if let loginVC = segue.destinationViewController as? LoginVC {
                loginVC.successClosure = {
                    print("closure dammit!")
                    self.isAuthenticated = true
                }
                
            }
        }
        
    }
}

