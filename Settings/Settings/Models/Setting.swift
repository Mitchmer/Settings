//
//  Setting.swift
//  Settings
//
//  Created by Mitch Merrell on 8/5/19.
//  Copyright © 2019 Mitch Merrell. All rights reserved.
//

import UIKit

class Setting {
    let name: String
    let isOn: Bool
    let icon: UIImage?
    
    init(name: String, isOn: Bool = false, icon: UIImage?) {
        self.name = name
        self.isOn = isOn
        self.icon = icon
    }
    
}
