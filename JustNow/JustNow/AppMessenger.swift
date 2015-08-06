//
//  AppMessenger.swift
//  JustNow
//
//  Created by Mahadevan, Ramesh on 7/25/15.
//  Copyright (c) 2015 GoliaMania. All rights reserved.
//

import Foundation
import UIKit

class AppMessenger{
    
    class func registerRemoteNotifications(application: UIApplication)->Void{
        application.registerForRemoteNotifications();
//            application.registerForRemoteNotificationTypes(.Alert | .Badge | .Sound);
    }
}