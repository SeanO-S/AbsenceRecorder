//
//  Absence.swift
//  AbsenceRecorder
//
//  Created by Okuyama-Smith, Sean (NA) on 03/02/2022.
//

import Foundation

class Absence: Codable {
    let takeOn: Date
    var studentAbsences: [StudentAbsence]
    
    init(date: Date, students: [Student]) {
        takeOn = date
        studentAbsences = students.map { StudentAbsence(student: $0) }
    }
    
    #if DEBUG
    static let example = Absence(date: Date(), students: Student.examples)
    #endif
}
