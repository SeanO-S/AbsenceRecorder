//
//  AbsenceRecorderApp.swift
//  AbsenceRecorder
//
//  Created by Okuyama-Smith, Sean (NA) on 24/01/2022.
//

import SwiftUI

@main
struct AbsenceRecorderApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(divisions: Division.examples)
        }
    }
}
