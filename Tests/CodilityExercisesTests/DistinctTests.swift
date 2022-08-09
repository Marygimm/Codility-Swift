//
//  DistinctTests.swift
//  
//
//  Created by Mary Moreira on 09/08/2022.
//

import XCTest
@testable import CodilityExercises

final class DistinctTests: XCTestCase {
    func test() {
        var arrayTest1 = [2,1,1,2,3,1]
    
        XCTAssertEqual(Distinct.solution(&arrayTest1), 3)
    }
}
