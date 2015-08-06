//
//  LoginViewController.swift
//  JustNow
//
//  Created by Mahadevan, Ramesh on 7/31/15.
//  Copyright (c) 2015 GoliaMania. All rights reserved.
//

import Foundation

import UIKit

class LoginViewController : ModalViewController, UITextFieldDelegate{
    
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var submit: UIButton!
    
    
    override func onViewReady() {
        self.submit.enabled=false;
        password.delegate=self;
        userName.delegate=self;
        
        self.userName.becomeFirstResponder();
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        if(textField == userName){
            password.becomeFirstResponder();
        }else{
            textField.resignFirstResponder();
        }
        return true;
    }
    
    
    @IBAction func onLogin(sender: AnyObject) {
        validateUser();
    }

    
    private func validateUser()->Void{
        Users.validate(self.userName.text, password: self.password.text) { () -> Void in
            self.performSegueWithIdentifier("homeRoute", sender: self);
        };
    }
    
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool{
        if(!self.submit.enabled){
            self.submit.enabled=true;
        }
        return true;
    }
}