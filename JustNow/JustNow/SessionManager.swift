//
//  SessionManager.swift
//  JustNow
//
//  Created by Mahadevan, Ramesh on 8/1/15.
//  Copyright (c) 2015 GoliaMania. All rights reserved.
//

import Foundation

public class SessionManager{
    
    class var appDefaults:Defaults {
        return Defaults();
    };
    
    public class func add(key: String, value: AnyObject)->Void{
        appDefaults.set(key, data: value);
    }
    
    public func get(key:String)->AnyObject{
        return SessionManager.appDefaults.getByKey(key);
    }
    
    public class func user()->AnyObject!{
        return appDefaults.getByKey(Users.USERKEY);
    }
    
    public class func isSignedIn()->Bool{
        return self.user() != nil;
    }
    
}
