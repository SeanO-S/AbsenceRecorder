//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by Okuyama-Smith, Sean (NA) on 01/02/2022.
//

import Foundation

class StateController: ObservableObject {
    @Published var divisions: [Division]
    
    init() {
        self.divisions = Division.examples
    }
}
