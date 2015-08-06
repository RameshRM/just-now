//
//  IncidentModel.swift
//  JustNow
//
//  Created by Mahadevan, Ramesh on 8/3/15.
//  Copyright (c) 2015 GoliaMania. All rights reserved.
//

import Foundation

public class IncidentModel{
    
    var title:String;
    var description:String;
    var shortDesc:String!;
    var createdDt:NSDate = NSDate();
    var reportedBy:String!;
    var status:String = IncidentStatuses.Active;
    var guid:String = NSUUID().UUIDString;
    var priority:String!;
    var incidentDtls:[IncidentDtl] = [];
    var incidentTags:[String] = [];
    
    public init(title:String, description: String){
        self.title = title;
        self.description = description;
    }
    
    
    public class func mock()-> IncidentDataStore{
        var title:String = "Unknown Exception";
        var description:String = "Unexpectedly found nil while unwrapping an Optional value<UITableView: 0x7fc4ac864e00; frame = (0";
        
        var entityDtl:IncidentDtl = IncidentDtl();
        var entity: IncidentModel = IncidentModel(title:"Unknown Exception", description:description);
        
        entity.priority = IncidentPriorities.Immediate;
        entity.shortDesc = description;
        entity.incidentTags = ["Network", "Long Urls"];
        
        entityDtl = IncidentDtl();
        entityDtl.content = "Unknown Exception";
        entityDtl.from = "TDO";
        entityDtl.incidentGuid = entity.guid;
        entityDtl.receivedDtTime = NSDate();
        
        IncidentDataStore.instance.store(entity);
        
        entity = IncidentModel(title:title, description:description);
        
        entity.priority = IncidentPriorities.Immediate;
        entity.shortDesc = description;
        entity.incidentTags = ["Network", "Long Urls"];
        
        entityDtl = IncidentDtl();
        entityDtl.content = "Unknown Exception";
        entityDtl.from = "TDO";
        entityDtl.incidentGuid = entity.guid;
        entityDtl.receivedDtTime = NSDate();
        
        IncidentDataStore.instance.store(entity);
        
        entity = IncidentModel(title:title, description:description);
        
        entity.priority = IncidentPriorities.Immediate;
        entity.shortDesc = description;
        entity.incidentTags = ["Network", "Long Urls"];
        
        entityDtl = IncidentDtl();
        entityDtl.content = "Unknown Exception";
        entityDtl.from = "TDO";
        entityDtl.incidentGuid = entity.guid;
        entityDtl.receivedDtTime = NSDate();
        
        IncidentDataStore.instance.store(entity);
        
        entity = IncidentModel(title:title, description:description);
        
        entity.priority = IncidentPriorities.Immediate;
        entity.shortDesc = description;
        entity.incidentTags = ["Network", "Long Urls"];
        
        entityDtl = IncidentDtl();
        entityDtl.content = "Unknown Exception";
        entityDtl.from = "TDO";
        entityDtl.incidentGuid = entity.guid;
        entityDtl.receivedDtTime = NSDate();
        entity.incidentDtls.append(entityDtl);

        entityDtl = IncidentDtl();
        entityDtl.content = "Unknown Exception2";
        entityDtl.from = "TDO";
        entityDtl.incidentGuid = entity.guid;
        entityDtl.receivedDtTime = NSDate();
        entity.incidentDtls.append(entityDtl);
        
        entityDtl = IncidentDtl();
        entityDtl.content = "Unknown Exception3";
        entityDtl.from = "TDO";
        entityDtl.incidentGuid = entity.guid;
        entityDtl.receivedDtTime = NSDate();
        entity.incidentDtls.append(entityDtl);
        
        entityDtl = IncidentDtl();
        entityDtl.content = "Unknown Exception";
        entityDtl.from = "TDO";
        entityDtl.incidentGuid = entity.guid;
        entityDtl.receivedDtTime = NSDate();
        entity.incidentDtls.append(entityDtl);
        entityDtl.addResponse("Try Restarting the Server");
        IncidentDataStore.instance.store(entity);
        
        return IncidentDataStore.instance;
        
    }
    
}