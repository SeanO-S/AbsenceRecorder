//
//  StatisticsView.swift
//  AbsenceRecorder
//
//  Created by Okuyama-Smith, Sean (NA) on 01/02/2022.
//

import SwiftUI

struct StatisticsView: View {
    @EnvironmentObject var state: StateController
    
    var body: some View {
        List(state.divisions, id: \.self.code) { division in
            NavigationLink(destination: AbsenceView(division: division)) {
                DivisionItem(div: division)
            }
        }
    }
}

struct StatisticsView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsView()
    }
}
