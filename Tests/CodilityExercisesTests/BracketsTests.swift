//
//  BracketsTests.swift
//  
//
//  Created by Mary Moreira on 10/08/2022.
//

/**
 A string S consisting of N characters is considered to be properly nested if any of the following conditions is true:

 S is empty;
 S has the form "(U)" or "[U]" or "{U}" where U is a properly nested string;
 S has the form "VW" where V and W are properly nested strings.
 For example, the string "{[()()]}" is properly nested but "([)()]" is not.

 Write a function:

 public func solution(_ S : inout String) -> Int

 that, given a string S consisting of N characters, returns 1 if S is properly nested and 0 otherwise.

 For example, given S = "{[()()]}", the function should return 1 and given S = "([)()]", the function should return 0, as explained above.

 Write an efficient algorithm for the following assumptions:

 N is an integer within the range [0..200,000];
 string S consists only of the following characters: "(", "{", "[", "]", "}" and/or ")".
 */

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
