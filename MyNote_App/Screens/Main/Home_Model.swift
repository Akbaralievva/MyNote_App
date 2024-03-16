//
//  Home_Model.swift
//  MyNote_App
//
//  Created by A LINA on 14/3/24.
//

import Foundation

import UIKit

protocol HomeModelProtocol {
    func getNotes()
}

class HomeModel: HomeModelProtocol {
    
    var controller: HomeControllerProtocol?
    
    var notes: [Note] = [
        Note(title: "School notes", bgColor: .systemPurple),
        Note(title: "Funny jokes", bgColor: .systemGreen),
        Note(title: "Travel bucket list", bgColor: .systemCyan),
        Note(title: "Random cooking ideas", bgColor: .systemYellow)
    ]
    
    init(controller: HomeControllerProtocol) {
        self.controller = controller
    }
    
    func getNotes() {
        controller?.onSuccessNotes(notes: notes)
    }
}
