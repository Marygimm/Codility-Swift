//
//  FrogRiverOneTests.swift
//
//
//  Created by Mary Moreira on 07/08/2022.
//

import XCTest
@testable import CodilityExercises

/**
 Write a function:

 public func solution(_ X : Int, _ A : inout [Int]) -> Int

 that, given a non-empty array A consisting of N integers and integer X, returns the earliest time when the frog can jump to the other side of the river.

 If the frog is never able to jump to the other side of the river, the function should return −1.

 For example, given X = 5 and array A such that:

   A[0] = 1
   A[1] = 3
   A[2] = 1
   A[3] = 4
   A[4] = 2
   A[5] = 3
   A[6] = 5
   A[7] = 4
 the function should return 6, as explained above.

 Write an efficient algorithm for the following assumptions:

 N and X are integers within the range [1..100,000];
 each element of array A is an integer within the range [1..X].
 */

final class FrogRiverOneTests: XCTestCase {
    func test() {
        
        var arrayTest1 = [1, 3, 1, 4, 2, 3, 5, 4]
        var arrayTest2 = [1,3,1,4,2,3,5,4]
        var arrayTest3 = [1]
        
        XCTAssertEqual(FrogRiverOne.solution(5, &arrayTest2), 6)
        XCTAssertEqual(FrogRiverOne.solution(3, &arrayTest1), 4)
        XCTAssertEqual(FrogRiverOne.solution(5, &arrayTest3), -1)
        XCTAssertEqual(FrogRiverOne.solution2(5, &arrayTest2), 6)
        XCTAssertEqual(FrogRiverOne.solution2(3, &arrayTest1), 4)
        XCTAssertEqual(FrogRiverOne.solution2(5, &arrayTest3), -1)
        XCTAssertEqual(FrogRiverOne.solution3(5, &arrayTest2), 6)
        XCTAssertEqual(FrogRiverOne.solution3(3, &arrayTest1), 4)
        XCTAssertEqual(FrogRiverOne.solution3(5, &arrayTest3), -1)
        
        
        
        XCTAssertEqual(FrogRiverOne.solutionForInternet(5, &arrayTest2), 6)
        XCTAssertEqual(FrogRiverOne.solutionForInternet(3, &arrayTest1), 4)
        XCTAssertEqual(FrogRiverOne.solutionForInternet(5, &arrayTest3), -1)

    }}
