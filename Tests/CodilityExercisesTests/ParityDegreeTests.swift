//
//  ParityDegreeTests.swift
//  
//
//  Created by Mary Moreira on 17/08/2022.
//

import XCTest
@testable import CodilityExercises

final class ParityDegreeTests: XCTestCase {
    func test(){
        XCTAssertEqual(ParityDegree.solution(4), 2)
        XCTAssertEqual(ParityDegree.solution(24), 3)
        XCTAssertEqual(ParityDegree.solution(3), 0)

    }
}
