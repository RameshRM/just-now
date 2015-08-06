//
//  DetailListViewController.swift
//  JustNow
//
//  Created by Mahadevan, Ramesh on 8/4/15.
//  Copyright (c) 2015 GoliaMania. All rights reserved.
//

import Foundation
import UIKit

class DetailListViewController : ListViewController{
    
    @IBAction func dismiss(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil);
    }
}