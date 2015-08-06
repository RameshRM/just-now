//
//  HomeViewController.swift
//  JustNow
//
//  Created by Mahadevan, Ramesh on 8/2/15.
//  Copyright (c) 2015 GoliaMania. All rights reserved.
//

import Foundation
import UIKit

class HomeViewController : ListViewController{
    var selectedItem:IncidentModel?;
    var items:[IncidentModel]!;
    
    @IBOutlet weak var itemList: UITableView!
    override func viewDidLoad() {
        self.tableView = itemList;
        super.viewDidLoad();
        items = IncidentModel.mock().all;
        self.prepareTableViewItem("IncidentItemCell");
        self.dataContext = items;
        self.setupDetailSegue("itemDetail");
    }
    
    override func onCellForRowIndexSet(tableCell: UITableViewCell, rowData: AnyObject, indexPath: NSIndexPath, canUserInteract: Bool) -> Void{
        
        var cell = tableCell as! IncidentItemCell;
        var itemModel:IncidentModel = rowData as! IncidentModel;
        
        cell.mainTitle.text  =  itemModel.title;
        cell.moreDetails.text  = itemModel.description;
        cell.receivedDtTime.text  = NSDate().toFormat("MM-dd") as String;
        //        cell.moreDetails.adjustsFontSizeToFitWidth=false;
        //        cell.moreDetails.lineBreakMode=NSLineBreakMode.ByTruncatingTail;
    }
    
    
}