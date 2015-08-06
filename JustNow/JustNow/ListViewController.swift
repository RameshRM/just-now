//
//  ListViewController.swift
//  JustNow
//
//  Created by Mahadevan, Ramesh on 8/3/15.
//  Copyright (c) 2015 GoliaMania. All rights reserved.
//

import Foundation
//
//  ListViewController.swift
//  TASKY
//
//  Created by Mahadevan, Ramesh on 1/2/15.
//  Copyright (c) 2015 GoliaMania. All rights reserved.
//

import UIKit

class ListViewController: MainViewController,UITableViewDelegate, UITableViewDataSource, ListViewProtocol {
    var isSearchOn:Bool = false;
    var tableView: UITableView!
    var itemCellIdentifier : NSString!;
    var detailIdentifier: String!;
    var detailView: UIViewController!;
    var dataEntity: AnyObject!;
    var dataContext: [AnyObject] = [] {
        willSet(newData){
        }
        didSet{
            
        }
    };
    var isDirty = false;
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataContext.count;
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell = UITableViewCell();
        println(itemCellIdentifier);
        println(self.tableView);
        println(self.tableView.dequeueReusableCellWithIdentifier(itemCellIdentifier as String));
        if(itemCellIdentifier != nil){
            cell = self.tableView.dequeueReusableCellWithIdentifier(itemCellIdentifier as String) as! UITableViewCell;
            self.onCellForRowIndexSet(cell, rowData: dataContext[indexPath.row], indexPath: indexPath, canUserInteract: isSearchOn);
            
            return cell;
        }
        return cell;
    }
    
    override func viewDidLoad() {
        addRefresh();
        addEdit();
        super.viewDidLoad();
    }
    
    
    func prepareTableViewItem(itemCellId: NSString) {
        self.tableView.delegate = self;
        self.tableView.dataSource = self;
        self.itemCellIdentifier = itemCellId;
    }
    
    
    func prepareTableView(tableView: UITableView)-> Void{
        self.tableView = tableView;
        self.tableView.delegate = self;
        self.tableView.dataSource = self;
    }
    
    
    func getNumberOfRows() -> Int{
        return dataContext.count;
    }
    
    /** Empty Stub**/
    /** Derived Class Should Implement **/
    func onCellForRowIndexSet(tableCell: UITableViewCell, rowData: AnyObject, indexPath: NSIndexPath) -> Void{
        
        
    }
    
    func onCellForRowIndexSet(tableCell: UITableViewCell, rowData: AnyObject,
        indexPath: NSIndexPath, canUserInteract: Bool) -> Void{
    }
    
    func disableUserInteractionForTable(){
        self.tableView.scrollEnabled=false;
        self.tableView.userInteractionEnabled = false;
        
    }
    
    
    func enableUserInteractionForTable(){
        self.tableView.scrollEnabled=true;
        self.tableView.userInteractionEnabled = true;
        
    }
    
    func refreshList() -> Void{
        println("Refreshing...");
        self.tableView.reloadData();
    }
    
    private func addRefresh()->Void{
        var refreshButton: UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Refresh, target: self, action: Selector("onRefresh"));
        self.navigationItem.setLeftBarButtonItem(refreshButton, animated: true);
        
    }
    
    private func addEdit()->Void{
        var refreshButton: UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Edit, target: self, action: Selector("onEdit"));
        self.navigationItem.setRightBarButtonItem(refreshButton, animated: true);
    }
    
    private func addToolbar(barButtonStyle: UIBarButtonItemStyle, position: NSString){
        
    }
    
    func setupDetailSegue(identifier: String) {
        self.detailIdentifier = identifier;
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == self.detailIdentifier){
            var rowIdx = self.tableView.indexPathForSelectedRow()?.row;
            var selectedItem:AnyObject = self.dataContext[rowIdx!];
            var detailView:DetailListViewController = segue.destinationViewController as! DetailListViewController;
            detailView.dataEntity = selectedItem;
        }
    }
    
    @objc func onEdit(){
        self.tableView.setEditing(!isDirty, animated: true);
        isDirty = !isDirty;
    }
}