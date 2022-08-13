//
//  MinMaxDivisionTests.swift
//  
//
//  Created by Mary Moreira on 13/08/2022.
//

import XCTest
@testable import CodilityExercises

final class MinMaxDivisionTests: XCTestCase {
    func test() {
        var arrayTest1 = [2,1,5,1,2,2,2]
        
        XCTAssertEqual(MinMaxDivision.solution(3, 5, &arrayTest1), 6)
    }
}
