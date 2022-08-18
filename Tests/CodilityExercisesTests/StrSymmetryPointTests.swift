//
//  StrSymmetryPointTests.swift
//  
//
//  Created by Mary Moreira on 17/08/2022.
//

import XCTest
@testable import CodilityExercises

final class StrSymmetryPointTests: XCTestCase {
    func test() {
        var string = "racecar"
        XCTAssertEqual(StrSymmetryPoint.solution(&string), 3)
    }
}
