//
//  Settings_Model.swift
//  MyNote_App
//
//  Created by A LINA on 15/3/24.
//

import Foundation

import UIKit

protocol SettingsModelProtocol {
    
    func ongetSet()
    
}



class Settings_Model: SettingsModelProtocol {
    
    
    var cv: SettingsControllerProtocol?
    
    var settings: [Setting] = [
        Setting(icone_Img: UIImage(systemName: "globe"), title: "Language", actionTap: true, switchTap: false),
        Setting(icone_Img: UIImage(systemName: "moon"), title: "Night Shift", actionTap: false, switchTap: true),
        Setting(icone_Img: UIImage(systemName: "trash"), title: "Clear Data", actionTap: false, switchTap: false)
    ]
    
    init(controller: SettingsControllerProtocol) {
        self.cv = controller
    }
    
    func ongetSet() {
        cv?.onSet(settings: settings)
    }
    
}
