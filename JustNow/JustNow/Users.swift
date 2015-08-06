//
//  Users.swift
//  JustNow
//
//  Created by Mahadevan, Ramesh on 8/2/15.
//  Copyright (c) 2015 GoliaMania. All rights reserved.
//

import Foundation

public class Users{

    class var USERKEY:String {
        return "SESSION.USER";
    };

    var userName:String!;
    var password:String!;
 
    init(){
        
    }
    
    init(userName:String, password:String){
        self.userName = userName;
        self.password = password;
    }
    
    
    private func save()->Void{
        var user:NSDictionary=["userName":self.userName, "password": self.password];
        SessionManager.add(Users.USERKEY, value: user);
    }
    
    
    public class func validate(userName:String, password:String, callback: () -> Void)->Void{
        callback();
        var user:Users = Users(userName: userName, password: password);
        user.save();

    }
    
}