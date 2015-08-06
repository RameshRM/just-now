//
//  NSObjectExtn.swift
//  JustNow
//
//  Created by Mahadevan, Ramesh on 7/26/15.
//  Copyright (c) 2015 GoliaMania. All rights reserved.
//

import Foundation
extension NSObject{
    
    var jsonStringify: NSString{
        if(self is NSString){
            return self as! NSString;
        }else{
            let data = NSJSONSerialization.dataWithJSONObject(self, options:NSJSONWritingOptions.allZeros, error: nil);
            let jsonString = NSString(data: data!, encoding: NSUTF8StringEncoding);
            return jsonString!;
        }
    }
}