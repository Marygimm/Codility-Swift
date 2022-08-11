//
//  FlagsTests.swift
//  
//
//  Created by Mary Moreira on 11/08/2022.
//

import XCTest
@testable import CodilityExercises

final class FlagsTests: XCTestCase {
    func test(){
        var arrayTest1 = [1,5,3,4,3,4,1,2,3,4,6,2]
        XCTAssertEqual(Flags.solution(&arrayTest1), 3)
    }
}
