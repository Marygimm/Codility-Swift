//
//  PeaksTests.swift
//  
//
//  Created by Mary Moreira on 12/08/2022.
//

import XCTest
@testable import CodilityExercises

final class PeaksTests: XCTestCase {
    func test() {
  
        var arrayTest1 = [1,2,3,4,3,4,1,2,3,4,6,2]
        
        XCTAssertEqual(Peaks.solution2(&arrayTest1), 3)
    }
}
