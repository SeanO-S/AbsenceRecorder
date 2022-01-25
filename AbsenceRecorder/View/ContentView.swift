//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Okuyama-Smith, Sean (NA) on 24/01/2022.
//

import SwiftUI

struct ContentView: View {
    var divisions: [Division]
    @State private var currentDate: Date = Date()
    var body: some View {
        NavigationView{
            List(divisions, id: \.self.code) { division in
                DivisionItem(div: division)
            }
            
            .navigationTitle(currentDate.shortenDate())
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: { currentDate = currentDate.decreaseDay() }) {
                        Image(systemName: "arrow.backward")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { currentDate = currentDate.incrementDay() }) {
                        Image(systemName: "arrow.forward")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(divisions: Division.examples)
    }
}
