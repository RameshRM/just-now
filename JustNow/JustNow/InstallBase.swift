//
//  InstallationInfo.swift
//  JustNow
//
//  Created by Mahadevan, Ramesh on 7/25/15.
//  Copyright (c) 2015 GoliaMania. All rights reserved.
//

import Foundation;
import UIKit;

public class InstallBase : NSObject{
    var installedDevice:InstalledDevice;
    var isDone = false;
    
    override init() {
        installedDevice = InstalledDevice(device: UIDevice.currentDevice());
    }
    
    
}
