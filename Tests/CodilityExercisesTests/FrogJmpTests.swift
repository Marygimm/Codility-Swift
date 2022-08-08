//
//  FrogJmpTests.swift
//  
//
//  Created by Mary Moreira on 07/08/2022.
//

import XCTest
@testable import CodilityExercises

/**
 Write a function:

 public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int

 that, given three integers X, Y and D, returns the minimal number of jumps from position X to a position equal to or greater than Y.

 For example, given:

   X = 10
   Y = 85
   D = 30
 the function should return 3, because the frog will be positioned as follows:

 after the first jump, at position 10 + 30 = 40
 after the second jump, at position 10 + 30 + 30 = 70
 after the third jump, at position 10 + 30 + 30 + 30 = 100
 Write an efficient algorithm for the following assumptions:

 X, Y and D are integers within the range [1..1,000,000,000];
 X ≤ Y.

 */

final class FrogJmpTests: XCTestCase {
    func test() {

        XCTAssertEqual(FrogJmp.solution(10, 85, 30), 3)
        XCTAssertEqual(FrogJmp.solution(0, 85, 1), 85)
        XCTAssertEqual(FrogJmp.solution(90, 85, 30), 0)
        XCTAssertEqual(FrogJmp.solution(1, 100, 100), 1)
        
    }}
