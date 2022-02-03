//
//  DivisionTests.swift
//  AbsenceRecorderTests
//
//  Created by Okuyama-Smith, Sean (NA) on 03/02/2022.
//

import XCTest
@testable import AbsenceRecorder


class DivisionTests: XCTestCase {


    func getAbsenceDivisionWithAbsenceOnSameDayReturnsCorrectly() throws {
        //arrange
        let division = Division(cd: "TestDiv")
        let dateToday = Date()
        let dateLaterToday = Date(timeIntervalSinceNow: 100)
        let dateEvenLater = Date(timeIntervalSinceNow: 10000000000000000000000)
        let absence1 = Absence(date: dateToday, students: Student.examples)
        let absence2 = Absence(date: dateEvenLater, students: Student.examples)
        division.absences.append(absence1)
        division.absences.append(absence2)
        //act
        let actual = division.getAbsence(for: dateLaterToday)
        //assert
        XCTAssertNotNil(actual)
        XCTAssertEqual(absence1.takeOn, actual?.takeOn)
    }


}
