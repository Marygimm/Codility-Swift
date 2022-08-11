//
//  CountDistinctSlicesTests.swift
//  
//
//  Created by Mary Moreira on 11/08/2022.
//

import XCTest
@testable import CodilityExercises

final class CountDistinctSlicesTests: XCTestCase {
    func test() {
        var arrayTest1 = [3,4,5,5,2]
        
        XCTAssertEqual(CountDistinctSlices.solution(6, &arrayTest1), 9)
    }
}

