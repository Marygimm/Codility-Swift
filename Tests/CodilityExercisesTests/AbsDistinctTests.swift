//
//  AbsDistinctTests.swift
//  
//
//  Created by Mary Moreira on 11/08/2022.
//

import XCTest
@testable import CodilityExercises

final class AbsDistinctTests: XCTestCase {
    func test() {
        var arrayTest1 = [-5,-3,-1,0,3,6]
        
        XCTAssertEqual(AbsDistinct.solution(&arrayTest1), 5)
    }
}
