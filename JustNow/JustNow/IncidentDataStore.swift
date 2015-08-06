//
//  IncidentDataStore.swift
//  JustNow
//
//  Created by Mahadevan, Ramesh on 8/3/15.
//  Copyright (c) 2015 GoliaMania. All rights reserved.
//

import Foundation

public class IncidentDataStore : NSObject{
    var all:[IncidentModel] = [];
    
    private override init(){
        super.init();
    }
    
    
    func store(entity: IncidentModel) -> Void{
        all.append(entity);
    }
    
    func getAll()->[IncidentModel]{
        return all;
    }
    
    
    class var  instance : IncidentDataStore{
        struct IncidentsInstance{
            static let instance = IncidentDataStore();
        }
        return IncidentsInstance.instance;
    }
    
}