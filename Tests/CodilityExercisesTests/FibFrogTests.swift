//
//  FibFrogTests.swift
//  
//
//  Created by Mary Moreira on 13/08/2022.
//

import XCTest
@testable import CodilityExercises

final class FibFrogTests: XCTestCase {
    func test() {
        var arrayTest1 = [0,0,0,1,1,0,1,0,0,0,0]
        
        XCTAssertEqual(FibFrog.solution2(&arrayTest1), 3)
        XCTAssertEqual(FibFrog.solution(&arrayTest1), 3)

    }
}
