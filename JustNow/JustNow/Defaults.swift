//
//  Defaults.swift
//  JustNow
//
//  Created by Mahadevan, Ramesh on 8/1/15.
//  Copyright (c) 2015 GoliaMania. All rights reserved.
//

import Foundation

public class Defaults{
    public let IS_REGISTERED  = "APP.ISREGISTERED";
    public let REGISTRATION = "APP.REGISTRATION";
    var userDefaults: NSUserDefaults;
    
    init(){
        self.userDefaults = NSUserDefaults.standardUserDefaults();
    }
    
    
    public func all()->NSUserDefaults{
        return NSUserDefaults.standardUserDefaults();
    }
    
    public func getByKey(key:String)->AnyObject{
        return all().dictionaryForKey(key)!;
    }
 
    public func set(forKey:String, data: AnyObject) -> Void{
        self.userDefaults.setValue(data, forKey: forKey);
    }
    
    public func setRegistered(data: AnyObject)->Void{
        self.set(REGISTRATION, data: data);
        self.userDefaults.setBool(true, forKey: IS_REGISTERED);
    }
    
    public func getRegistered()->AnyObject?{
        var isRegistered = self.userDefaults.boolForKey(IS_REGISTERED);
        var registered: AnyObject! = userDefaults.objectForKey(REGISTRATION) as AnyObject!;
        
        if(!isRegistered){
            return nil;
        }else{
            return registered;
        }
    }
    
}