//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by Okuyama-Smith, Sean (NA) on 01/02/2022.
//

import Foundation

class StateController: ObservableObject {
    @Published var divisions: [Division] = []
    
    init() {
        loadFrom()
    }
    
    
    func loadFrom() {
        if let loaded: [Division] = FileManager.default.load(from: "divisions.json") {
            divisions = loaded
        }
    }
    
    func saveTo() {
        FileManager.default.save(to: "divisions.json", object: divisions)
    }
}
