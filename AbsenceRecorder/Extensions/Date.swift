//
//  Date.swift
//  AbsenceRecorder
//
//  Created by Okuyama-Smith, Sean (NA) on 25/01/2022.
//

import Foundation

extension Date {
    func shortenDate() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        
        return formatter.string(from: self)
    }
    
    func decreaseDay() -> Date {
        return Calendar.current.date(byAdding: .day, value: -1, to: self) ?? Date()
    }
    
    func incrementDay() -> Date {
        return Calendar.current.date(byAdding: .day, value: 1, to: self) ?? Date()
    }
}
