//
//  AppBase.swift
//  JustNow
//
//  Created by Mahadevan, Ramesh on 7/25/15.
//  Copyright (c) 2015 GoliaMania. All rights reserved.
//

import Foundation
import UIKit

public class AppBase{
    class var appDefaults:Defaults {
        return Defaults();
    };
    
    public class func getDevice()->UIDevice{
        return UIDevice.currentDevice();
    }
    
    public class func getVersion()->String{
        return self.getDevice().systemVersion;
    }
    
    public class func  isRegistered()->Bool{
        return appDefaults.all().boolForKey(appDefaults.IS_REGISTERED);
    }
}