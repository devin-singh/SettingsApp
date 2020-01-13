//
//  Setting.swift
//  SettingsApp
//
//  Created by Devin Ghumman on 1/13/20.
//  Copyright © 2020 Devin Ghumman. All rights reserved.
//

import UIKit

class Setting {
    
    // Properties
    let name: String
    let icon: UIImage
    var isOn: Bool
    
    // Initializers
    init(name: String, icon: UIImage, isOn: Bool) {
        self.name = name
        self.icon = icon
        self.isOn = isOn
    }
}
