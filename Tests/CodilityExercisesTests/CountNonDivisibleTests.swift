//
//  CountNonDivisibleTests.swift
//  
//
//  Created by Mary Moreira on 12/08/2022.
//

import XCTest
@testable import CodilityExercises

final class CountNonDivisibleTests:XCTestCase {
    func test() {
        var arrayTest1 = [3,1,2,3,6]
        var arrayTest2 = [3,4]
        let result1 = [2,4,3,2,0]
        let result2 = [1,1]
        
//        XCTAssertEqual(CountNonDivisible.solution(&arrayTest1), result1)
        XCTAssertEqual(CountNonDivisible.solution(&arrayTest2), result2)
    }
}
