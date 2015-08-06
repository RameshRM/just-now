//
//  ModalViewController.swift
//  JustNow
//
//  Created by Mahadevan, Ramesh on 8/1/15.
//  Copyright (c) 2015 GoliaMania. All rights reserved.
//

import Foundation
import UIKit;

class ModalViewController : BaseViewController{
    var  layoutNavigation: NavigationBar!;
    var hasData : Bool = false;
    var dataContext: AnyObject! {
        willSet(newData){
            hasData = newData != nil;
        }
        didSet{
            
        }
    };
    @IBAction func dismiss(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil);
    }
    
    override func viewDidLoad() {
        self.layoutNavigation = NavigationBar();
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
//    func addLeftBarButton(text:String)->Void{
//        var leftButton: UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Cancel, target: self, action: Selector("onEdit"));
//        leftButton.title = text;
//        var navbar:UINavigationBar = UINavigationBar();
//        self.view.addSubview(navbar)
//        self.navigationItem.setRightBarButtonItem(leftButton, animated: true);
//        navbar.pushNavigationItem(self.navigationItem, animated: false);
//
//    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews();

        
    }
}