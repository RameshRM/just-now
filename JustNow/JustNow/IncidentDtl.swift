//
//  IncidentDtl.swift
//  JustNow
//
//  Created by Mahadevan, Ramesh on 8/3/15.
//  Copyright (c) 2015 GoliaMania. All rights reserved.
//

import Foundation

public class IncidentDtl{
    var incidentGuid: String!;
    var from: String!
    var receivedDtTime: NSDate!;
    var content: String!;
    var guid:String = NSUUID().UUIDString;
    var response: String!;
    init(){
    }
    
    public func addResponse(content:String)->Void{
        self.response = content;
    }
}