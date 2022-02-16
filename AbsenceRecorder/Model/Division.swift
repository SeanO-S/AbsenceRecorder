//
//  Division.swift
//  AbsenceRecorder
//
//  Created by Okuyama-Smith, Sean (NA) on 24/01/2022.
//

import Foundation

class Division: Codable{
    let code: String
    var students: [Student] = []
    var absences: [Absence] = []
    
    func getAbsence(for date: Date) -> Absence? {
        return absences.first {
            let comparison = Calendar.current.compare($0.takeOn, to: date, toGranularity: .day)
            return comparison == .orderedSame
        }
    }
    
    func createOrGetAbsence(for date: Date) -> Absence{
        if let existingAbsence = getAbsence(for: date) {
            return existingAbsence
        } else {
            let new = Absence(date: date, students: students)
            absences.append(new)
            return new
        }
    }
    
    init(cd: String){
        self.code = cd
    }
    
    #if DEBUG
    static func createDivision(code: String, of size: Int) -> Division {
        let division = Division(cd: code)
        let fns: [String] = ["Bob", "Jim", "Steve"]
        let sns: [String] = ["Okuyama-Smith", "Another-One", "IDon'tHaveAnImagination"]
        for _ in 0..<size{
            division.students.append(Student(fn: fns.randomElement()!, sn: sns.randomElement()!, bd: Date()))
        }
        return division
    }
    static let examples = [Division.createDivision(code: "vBy-1", of: 8), Division.createDivision(code: "vCy-1", of: 10), Division.createDivision(code: "vDy-1", of: 12), Division.createDivision(code: "vEy-1", of: 6)]
    
    #endif
}
