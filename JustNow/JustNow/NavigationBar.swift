//
//  NavigationBar.swift
//  JustNow
//
//  Created by Mahadevan, Ramesh on 8/4/15.
//  Copyright (c) 2015 GoliaMania. All rights reserved.
//

import Foundation
import UIKit;

class NavigationBar : UINavigationBar{
    
//    init(callback:String){
//
//    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.blueColor()
        
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder);
        self.backgroundColor = UIColor.blueColor()
    }
    
    private func addLeftButton(text:String, view: UIViewController)->Void{
        var leftButton: UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Cancel, target: self, action: Selector("onEdit"));
        leftButton.title = text;
        self.pushNavigationItem(view.navigationItem, animated: false);
    }
    
}