//
//  IncidentDetailCell.swift
//  JustNow
//
//  Created by Mahadevan, Ramesh on 8/4/15.
//  Copyright (c) 2015 GoliaMania. All rights reserved.
//

import Foundation
import UIKit

class IncidentDetailCell : UITableViewCell{
    
    @IBOutlet weak var message: UILabel!
//    @IBOutlet weak var response: UILabel!
    @IBOutlet weak var header: UILabel!
    
    func dataBind(dataContext: IncidentDtl){
        self.message.text = dataContext.content;
        self.header.text = dataContext.from;
//        self.response.text = dataContext.response;
//        self.response.hidden = dataContext.response == nil;
    }
}