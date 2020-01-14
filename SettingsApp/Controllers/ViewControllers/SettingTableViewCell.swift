//
//  SettingTableViewCell.swift
//  SettingsApp
//
//  Created by Devin Singh on 1/13/20.
//  Copyright © 2020 Devin Singh. All rights reserved.
//

import UIKit

protocol SettingCellDelegate: class {
    func settingSwitchTapped(for cell: SettingTableViewCell)
}

class SettingTableViewCell: UITableViewCell {
    
    // Outlets
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!

    var cellDelegate: SettingCellDelegate?
    
    // Actions
    
    func updateViews(withSetting setting: Setting) {
        iconImageView.image = setting.icon
        nameLabel.text = setting.name
        settingSwitch.isOn = setting.isOn
        
        backgroundColor = settingSwitch.isOn ? .purple : .white
        nameLabel.textColor = settingSwitch.isOn ? .white : .purple
    }
    
    @IBAction func settingSwitchToggled(_ sender: Any) {
        cellDelegate?.settingSwitchTapped(for: self)
    }
}


