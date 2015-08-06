//
//  ItemDetailViewController.swift
//  JustNow
//
//  Created by Mahadevan, Ramesh on 8/3/15.
//  Copyright (c) 2015 GoliaMania. All rights reserved.
//

import Foundation
import UIKit

class ItemDetailViewController : DetailListViewController,UITextFieldDelegate{
    var thisDataCtx:IncidentModel!;
    
    @IBOutlet weak var navBar: UINavigationBar!
    @IBOutlet weak var itemList: UITableView!
    
    @IBOutlet weak var comments: UITextField!
    @IBOutlet weak var addComment: UIButton!
    @IBOutlet weak var messageContainer: UIView!
    @IBAction func dismissView(sender: AnyObject) {
        self.dismiss(sender);
    }
    
    override func viewDidLoad() {
        thisDataCtx = self.dataEntity as! IncidentModel ;
        self.navBar.topItem?.title = thisDataCtx.title;
        self.tableView = itemList;
        self.prepareTableViewItem("IncidentDetailCell");
        self.dataContext = thisDataCtx.incidentDtls;
        self.messageContainer.hidden = self.dataContext.count<=0;
        super.viewDidLoad();
    }

    
    override func onCellForRowIndexSet(tableCell: UITableViewCell, rowData: AnyObject, indexPath: NSIndexPath, canUserInteract: Bool) -> Void{
        var itemModel:IncidentDtl = rowData as! IncidentDtl;
        var cell = tableCell as! IncidentDetailCell;
        cell.dataBind(itemModel);
    
    }
    
    @IBAction func onAddComment(sender: AnyObject) {
        if(!comments.text.isEmpty){
            var incidentDtl:IncidentDtl = IncidentDtl();
            incidentDtl.incidentGuid = self.thisDataCtx.guid;
            incidentDtl.from = "MahadevanR";
            incidentDtl.content = comments.text;
            incidentDtl.receivedDtTime = NSDate();
            thisDataCtx.incidentDtls.append(incidentDtl);
            self.dataContext = thisDataCtx.incidentDtls;
            self.tableView.reloadData();
            comments.text="";
        }
    }

    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool{
        if(!self.addComment.enabled){
            self.addComment.enabled=true;
        }
        return true;
    }
}