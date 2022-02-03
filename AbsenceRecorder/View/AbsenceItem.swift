//
//  AbsenceItem.swift
//  AbsenceRecorder
//
//  Created by Okuyama-Smith, Sean (NA) on 03/02/2022.
//

import SwiftUI

struct AbsenceItem: View {
    @ObservedObject var studentAbsence: StudentAbsence
    
    var body: some View {
        HStack{
            Text("\(studentAbsence.student.firstName)")
            Spacer()
            if studentAbsence.isAbsent {
                Button("❌") {
                    toggleAbsent()
                }
            } else {
                Button("✔️") {
                    toggleAbsent()
                }
            }
        }
    }
    
    func toggleAbsent() {
        studentAbsence.isAbsent = studentAbsence.isAbsent ? false : true
    }
}

struct AbsenceItem_Previews: PreviewProvider {
    static var previews: some View {
        AbsenceItem(studentAbsence: StudentAbsence.example)
    }
}
