//
//  HomeController.swift
//  MyNote_App
//
//  Created by A LINA on 14/3/24.
//

import Foundation

protocol HomeControllerProtocol {
    
    func onGetNotes()
    
    func onSuccessNotes(notes: [Note])
}

class HomeController: HomeControllerProtocol {
    
    private var model: HomeModelProtocol?
    private var view: HomeViewProtocol?
    
    init(view: HomeViewProtocol) {
        self.model = HomeModel(controller: self)
        self.view = view
    }
    
    func onGetNotes() {
        model?.getNotes()
    }
    
    func onSuccessNotes(notes: [Note]) {
        view?.successNotes(notes: notes)
        
    }
}
