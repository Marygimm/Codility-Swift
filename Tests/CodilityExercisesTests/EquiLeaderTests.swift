//
//  EquiLeaderTests.swift
//  
//
//  Created by Mary Moreira on 10/08/2022.
//

import XCTest
@testable import CodilityExercises

final class EquiLeaderTests: XCTestCase {
    func test() {
        var arrayTest1 = [4,3,4,4,4,2]
        
        XCTAssertEqual(EquiLeader.solution(&arrayTest1), 2)
    }
}
