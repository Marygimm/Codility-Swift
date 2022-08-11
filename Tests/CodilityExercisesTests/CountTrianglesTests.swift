//
//  CountTrianglesTests.swift
//  
//
//  Created by Mary Moreira on 11/08/2022.
//

import XCTest
@testable import CodilityExercises

final class CountTrianglesTests: XCTestCase {
    func test() {
        var arrayToTest1 = [10,2,5,1,8,12]
        
        XCTAssertEqual(CountTriangles.solution(&arrayToTest1), 4)
    }
}
