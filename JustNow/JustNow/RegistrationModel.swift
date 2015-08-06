
//  RegistrationModel.swift
//  JustNow
//
//  Created by Mahadevan, Ramesh on 7/26/15.
//  Copyright (c) 2015 GoliaMania. All rights reserved.
//

import Foundation

public class RegistrationModel : NSObject {
    var deviceInfo : InstalledDevice!;
    var appInfo: AppInfo!;
    var apiServer:String = "http://52.8.213.186:8080/api/registration";
    
    init(device:InstalledDevice, appInfo: AppInfo){
        self.deviceInfo = device;
        self.appInfo = appInfo;
    }
    
    func getOrregister()->AnyObject!{
        if(!AppBase.isRegistered()){
            register();
            return self;
        }else{
            return AppBase.appDefaults.getRegistered()!;
        }
    }
    
    private func register(){
        var model = Model();
        var messageKVP:NSDictionary=["appInfo":self.appInfo.toKVP(), "deviceInfo": self.deviceInfo.toKVP()];
        
        var err: NSError?
        
        var jsonData = NSJSONSerialization.dataWithJSONObject(messageKVP, options: nil, error: nil);
        let jsonString = NSString(data: jsonData!, encoding: NSUTF8StringEncoding);
        println(jsonString);
        let httpClient:HTTPClient = HTTPClient(URL: NSURL(string: apiServer)!);
        
        httpClient.post(HTTPContentTypes.ApplicationJSON, httpBody: jsonString!,
            onSuccess: { (result) -> Void in
                AppBase.appDefaults.setRegistered(messageKVP);
            },
            onError: { (error) -> Void in
                println(error);
            }
        );
    }
    
}