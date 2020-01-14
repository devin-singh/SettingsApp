//
//  SettingListTableViewController.swift
//  SettingsApp
//
//  Created by Devin Singh on 1/13/20.
//  Copyright © 2020 Devin Singh. All rights reserved.
//

import UIKit

class SettingListTableViewController: UITableViewController, SettingCellDelegate {

    func settingSwitchTapped(for cell: SettingTableViewCell) {
        
        guard let indexPath = self.tableView.indexPath(for: cell) else {return}
        
        let setting = SettingController.sharedInstance.settings[indexPath.row]
        
        SettingController.sharedInstance.toggleIsOn(forSetting: setting)
        
        cell.updateViews(withSetting: setting)
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return SettingController.sharedInstance.settings.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell", for: indexPath) as? SettingTableViewCell else {return UITableViewCell()}
        
        let setting = SettingController.sharedInstance.settings[indexPath.row]
        // Configure our cell
        cell.updateViews(withSetting: setting)
        
        cell.cellDelegate = self
        
        return cell
    }
}
