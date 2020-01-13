//
//  SettingController.swift
//  SettingsApp
//
//  Created by Devin Ghumman on 1/13/20.
//  Copyright © 2020 Devin Ghumman. All rights reserved.
//

import UIKit

class SettingController {
    
    // Singleton
    static let sharedInstance = SettingController()
    
    // Properties
    let settings: [Setting] = {
        let iTunes = Setting(name: "iTunes", icon: #imageLiteral(resourceName: "iTunes"), isOn: false)
        let appStore = Setting(name: "App Store", icon: #imageLiteral(resourceName: "AppStore"), isOn: false)
        let books = Setting(name: "iBooks", icon: #imageLiteral(resourceName: "Books"), isOn: false)
        
        return [iTunes, appStore, books]
    }()
    
    // Class methods
    func toggleIsOn(forSetting setting: Setting) {
        setting.isOn = !setting.isOn
    }
}
