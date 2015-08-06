//
//  NSDateExtn.swift
//  JustNow
//
//  Created by Mahadevan, Ramesh on 8/3/15.
//  Copyright (c) 2015 GoliaMania. All rights reserved.
//

import Foundation

extension NSDate{
    
    func toFormat(format:String) -> NSString{
        let dateFormat = NSDateFormatter();
        dateFormat.dateFormat = format;
        return dateFormat.stringFromDate(self);
    }
    
}