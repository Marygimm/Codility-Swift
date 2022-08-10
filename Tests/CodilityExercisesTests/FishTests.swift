//
//  FishTests.swift
//  
//
//  Created by Mary Moreira on 10/08/2022.
//

import XCTest
@testable import CodilityExercises

final class FishTests: XCTestCase {
    func test() {
        var arraytestA = [4,3,2,1,5]
        var arrayTestB = [0,1,0,0,0]
        
        XCTAssertEqual(Fish.solution(&arraytestA, &arrayTestB), 2)
    }
}
