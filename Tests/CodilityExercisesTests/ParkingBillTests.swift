//
//  ParkingBillTests.swift
//  
//
//  Created by Mary Moreira on 17/08/2022.
//

import XCTest
@testable import CodilityExercises

final class ParkingBillTests: XCTestCase {
    func test() {
        var hour1 = "10:00"
        var hour2 = "13:24"
        var hour3 = "18:21"
        var hour4 = "18:29"
        var hour5 = "00:27"
        var hour6 = "23:37"
        var hour7 = "01:33"
        var hour8 = "22:00"

        XCTAssertEqual(ParkingBill.solution(&hour1, &hour2), 17)
        XCTAssertEqual(ParkingBill.solution(&hour3, &hour4), 5)
        XCTAssertEqual(ParkingBill.solution(&hour5, &hour6), 97)
        XCTAssertEqual(ParkingBill.solution(&hour7, &hour8), 85)



    }
}
