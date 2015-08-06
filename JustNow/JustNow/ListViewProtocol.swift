//
//  ListViewProtocol.swift
//  JustNow
//
//  Created by Mahadevan, Ramesh on 8/3/15.
//  Copyright (c) 2015 GoliaMania. All rights reserved.
//

import Foundation
import UIKit;

@objc protocol  ListViewProtocol{
    func prepareTableViewItem(itemCellId: NSString)-> Void;
    func prepareTableView(tableView: UITableView)-> Void;
    func getNumberOfRows() -> Int;
    func onCellForRowIndexSet(tableCell: UITableViewCell, rowData: AnyObject, indexPath: NSIndexPath)-> Void;
}