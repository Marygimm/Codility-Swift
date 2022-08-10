//
//  BracketsTests.swift
//  
//
//  Created by Mary Moreira on 10/08/2022.
//

import XCTest
@testable import CodilityExercises

final class BracketsTests: XCTestCase {
    func test() {
        var stringToTest = "{[()()]}"
        var stringToTest2 = "{[)()}"
        var stringToTest3 = "{()}"
        var stringToTest4 = "{[]}"
        var stringToTest5 = "{}"
        var stringToTest6 = "[(]]"


        
        XCTAssertEqual(Brackets.solution(&stringToTest), 1)
        XCTAssertEqual(Brackets.solution(&stringToTest2), 0)
        XCTAssertEqual(Brackets.solution(&stringToTest3), 1)
        XCTAssertEqual(Brackets.solution(&stringToTest4), 1)
        XCTAssertEqual(Brackets.solution(&stringToTest5), 0)
        XCTAssertEqual(Brackets.solution(&stringToTest6), 0)


    }
}
