//
//  HttpClientResponses.swift
//  JustNow
//
//  Created by Mahadevan, Ramesh on 7/26/15.
//  Copyright (c) 2015 GoliaMania. All rights reserved.
//

import Foundation

public class HTTPClientResponse{
    let responseStatus: NSURLResponse;
    let responseData: NSData;
    init(status: NSURLResponse, data: NSData){
        self.responseStatus = status;
        self.responseData = data;
    }
}