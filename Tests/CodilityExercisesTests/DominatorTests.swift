//
//  DominatorTests.swift
//  
//
//  Created by Mary Moreira on 10/08/2022.
//

import XCTest
@testable import CodilityExercises

final class DominatorTests: XCTestCase {
    func test() {
        
        var arrayTest1 = [3,4,3,2,3,-1,3,3]
        var possibleValues = [0,2,4,6,7]
        let solution = Dominator.solution(&arrayTest1)
        XCTAssertEqual(possibleValues.contains(solution), true)
    }
}
