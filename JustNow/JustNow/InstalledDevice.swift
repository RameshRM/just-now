//
//  InstalledDevice.swift
//  JustNow
//
//  Created by Mahadevan, Ramesh on 7/25/15.
//  Copyright (c) 2015 GoliaMania. All rights reserved.
//

import Foundation
import UIKit

public class InstalledDevice {

    static let IOS7 = 7;
    static let IOS8 = 8;

    
    var name: NSString = "" ;
    
    var model: NSString = "" ;
    var localizedModel: NSString = "";
    var systemName: NSString = "" ;
    var systemVersion: NSString = "";
    var deviceId: NSString = "";
    
    init(device: UIDevice){
        self.name = device.name;
        self.model = device.model;
        self.localizedModel = device.localizedModel;
        self.systemName = device.systemName;
        self.systemVersion = device.systemVersion;
        self.deviceId = device.identifierForVendor.UUIDString;
        
    }
   
    func isIOS8()->Bool{
        return isVersion(8);
    }
    
    func isVersion(input:Int)->Bool{
        var version = (self.systemVersion as! String).toInt();
        return version == input;
    }
    
    
    func toKVP()->NSDictionary{
        var messageKVP:NSDictionary=["deviceId":self.deviceId, "name" : self.name, "model": self.model,
            "softwareVersion": ("\(self.systemName)-\(self.model):\(self.systemVersion)"), "lastUpdated": self.localizedModel, "osName": self.systemName];
        return messageKVP;
        
    }
    
}