//
//  StudentAbsence.swift
//  AbsenceRecorder
//
//  Created by Okuyama-Smith, Sean (NA) on 03/02/2022.
//

import Foundation

class StudentAbsence: ObservableObject {
    let student: Student
    @Published var isAbsent: Bool
    
    
    init(student: Student) {
        self.student = student
        isAbsent = false
    }
    
    #if DEBUG
    static let example = StudentAbsence(student: Student(fn: "Sean", sn: "O-S", bd: Date()))
    #endif
}
