//
//  AppInfo.swift
//  JustNow
//
//  Created by Mahadevan, Ramesh on 7/26/15.
//  Copyright (c) 2015 GoliaMania. All rights reserved.
//

import Foundation

public class AppInfo {
    var appId : String!;
    var appVersion : String!;
    var lastUpdated = NSDate().timeIntervalSince1970;
    var firstInstalledTime = NSDate().timeIntervalSince1970;
    static let APPVERSION:String = "CFBundleVersion";
    
    
    init(){
        
    }
    
    init(appId:String, bundleProperties: [NSObject : AnyObject]){

        self.appId = appId;
        self.appVersion = bundleProperties[AppInfo.APPVERSION] as! String
    
    }
    
    func toKVP()->NSDictionary{
        
        var messageKVP:NSDictionary=["appId":self.appId, "appVersion": self.appVersion, "lastUpdated": self.lastUpdated, "firstInstalledTime": self.firstInstalledTime];
        return messageKVP;
        
    }
    

    
}