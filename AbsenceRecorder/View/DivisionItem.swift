//
//  DivisionItem.swift
//  AbsenceRecorder
//
//  Created by Okuyama-Smith, Sean (NA) on 25/01/2022.
//

import SwiftUI

struct DivisionItem: View {
    let div: Division
    
    var body: some View {
        HStack{
            Image(systemName: "\(div.students.count).circle")
            Text("\(div.code)")
        }
    }
}

struct DivisionItem_Previews: PreviewProvider {
    static var previews: some View {
        DivisionItem(div: Division(cd: "aBY-1"))
    }
}
