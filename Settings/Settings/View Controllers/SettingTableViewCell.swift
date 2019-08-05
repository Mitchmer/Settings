//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Mitch Merrell on 8/5/19.
//  Copyright © 2019 Mitch Merrell. All rights reserved.
//

import UIKit

class SettingTableViewCell: UITableViewCell {

    // MARK: Outlets
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var settingNameLabel: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!
    
    // MARK: Properties
    
    var setting: Setting? {
        didSet {
            updateViews()
        }
    }
    
    // MARK: Custom Methods
    
    func updateViews() {
        
        if let setting = setting {
            
            iconImageView.image = setting.icon
            settingNameLabel.text = setting.name
            settingSwitch.isOn = setting.isOn
            
            backgroundColor = setting.isOn ? .lightGray : .white
            
        } else {
            
        }
    }

}
