//
//  HttpClient.swift
//  JustNow
//
//  Created by Mahadevan, Ramesh on 7/25/15.
//  Copyright (c) 2015 GoliaMania. All rights reserved.
//

import Foundation
public class HTTPClient: NSMutableURLRequest {
    
    func post(contentType:NSString, httpBody: NSString, onSuccess: (result: HTTPClientResponse!) -> Void, onError: (error: NSError!) -> Void) -> Void{
        self.HTTPMethod="POST";
        let requestData = (httpBody as NSString).dataUsingEncoding(NSUTF8StringEncoding);
        self.execute(contentType, httpBody: httpBody, onSuccess: onSuccess, onError: onError);
    }
    
    func postJSON(httpBody: NSObject, onSuccess: (result: HTTPClientResponse!) -> Void, onError: (error: NSError!) -> Void) -> Void{
        self.HTTPMethod="POST";
        self.execute(HTTPContentTypes.ApplicationJSON, httpBody: httpBody.jsonStringify, onSuccess: onSuccess, onError: onError);
    }
    
    private func execute(contentType:NSString, httpBody: NSString, onSuccess: (result: HTTPClientResponse!) -> Void, onError: (error: NSError!) -> Void) -> Void{
        self.setValue(contentType as String, forHTTPHeaderField: "Content-Type");
        self.HTTPBody = (httpBody as NSString).dataUsingEncoding(NSUTF8StringEncoding);
        NSURLConnection.sendAsynchronousRequest(self,queue: NSOperationQueue.mainQueue()) {
            (response: NSURLResponse!, data: NSData!, error: NSError!) -> Void in
            if(error != nil){
                onError(error: error);
            }else{
                let clientResponse = HTTPClientResponse(status: response, data: data);
                onSuccess(result: clientResponse);
            }
        }
    }
    
}