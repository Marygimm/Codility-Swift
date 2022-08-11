//
//  MaxNonoverlappingSegmentsTests.swift
//  
//
//  Created by Mary Moreira on 11/08/2022.
//

import XCTest
@testable import CodilityExercises

final class MaxNonoverlappingSegmentsTests: XCTestCase {
    func test() {
        var arrayToTestA = [1,3,7,9,9]
        var arrayToTestB = [5,6,8,9,10]
        
        XCTAssertEqual(MaxNonoverlappingSegments.solution(&arrayToTestA, &arrayToTestB), 3)
    }
}
