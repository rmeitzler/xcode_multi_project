//
//  LoginVC.swift
//  LoopCommonDemo
//
//  Created by Richard Meitzler on 7/12/16.
//
//

import UIKit


public class LoginVC: UIViewController {
    
    public var secretValue :String?         // Something to prepopulate the username field with
    public var successClosure: (Void -> Void)?
    public var failureClosure: (Void -> Void)?
    
    var isAuthenticated = true
    
    
    @IBOutlet var usernameField :UITextField?
    @IBOutlet var passwordField :UITextField?
    
   public override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        
        if usernameField != nil && secretValue != nil {
            usernameField?.text = secretValue
        }
    
    }
    
   public override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func didPressLogin(sender:UIButton){
        dismissMe()
    }
    
    func dismissMe(){
        
        if( isAuthenticated ){
            
            if successClosure != nil{
                successClosure!()
                dismissViewControllerAnimated(false, completion: nil)
            }
        }else{
            if failureClosure != nil{
                failureClosure!()
            }
        }
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
}