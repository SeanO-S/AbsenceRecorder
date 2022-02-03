//
//  Student.swift
//  AbsenceRecorder
//
//  Created by Okuyama-Smith, Sean (NA) on 24/01/2022.
//

import Foundation

class Student{
    let firstName: String
    let surname: String
    let birthday: Date
    
    init(fn: String, sn: String, bd: Date){
        self.firstName = fn
        self.surname = sn
        self.birthday = bd
    }
    
    #if DEBUG
    static let examples = [Student(fn: "Sean", sn: "O-S", bd: Date())]
    #endif
}
