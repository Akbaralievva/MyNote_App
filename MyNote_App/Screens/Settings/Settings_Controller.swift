//
//  Settings_Controller.swift
//  MyNote_App
//
//  Created by A LINA on 15/3/24.
//


import Foundation

protocol SettingsControllerProtocol {
    
    func onGetSettings()
    
    func onSet(settings: [Setting])
}

class Settings_Controller: SettingsControllerProtocol {
   
    private var model: SettingsModelProtocol?
    private var view: Settings_ViewProtocol?
    
    init(view: Settings_ViewProtocol) {
        self.model = Settings_Model(controller: self)
        self.view = view
    }
    
    func onGetSettings() {
        model?.ongetSet()
    }
    
    func onSet(settings: [Setting]) {
        view?.successSets(settings: settings)
        
    }
}
