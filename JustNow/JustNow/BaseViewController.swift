//
//  BaseViewController.swift
//  JustNow
//
//  Created by Mahadevan, Ramesh on 8/1/15.
//  Copyright (c) 2015 GoliaMania. All rights reserved.
//

import Foundation

import UIKit

class BaseViewController: UIViewController {
 
    override func viewDidLoad() {
        super.viewDidLoad();
        onViewReady();
    }
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated);
        onViewReady();
    }
    
   
    override func prefersStatusBarHidden() -> Bool {
        return true;
    }
    
 

    func onViewReady() -> Void{
        
    }
    
}