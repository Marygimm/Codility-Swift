//
//  PermCheckTests.swift
//  
//
//  Created by Mary Moreira on 08/08/2022.
//

/**
 Write a function:

 class Solution { public int solution(int[] A); }

 that, given an array A, returns 1 if array A is a permutation and 0 if it is not.

 For example, given array A such that:

     A[0] = 4
     A[1] = 1
     A[2] = 3
     A[3] = 2
 the function should return 1.

 Given array A such that:

     A[0] = 4
     A[1] = 1
     A[2] = 3
 the function should return 0.

 Write an efficient algorithm for the following assumptions:

 N is an integer within the range [1..100,000];
 each element of array A is an integer within the range [1..1,000,000,000].
 */

import XCTest
@testable import CodilityExercises

final class PermCheckTests: XCTestCase {
    func test() {
        var test1 = [4,1,3,2]
        var test2 = [4,1,3]
        var test3 = [4,1,3,2,5,6,9]
        var test4 = [4,1,3,2,5,6,7]


        XCTAssertEqual(PermCheck.solution(&test1), 1)
        XCTAssertEqual(PermCheck.solution(&test2), 0)
        XCTAssertEqual(PermCheck.solution(&test3), 0)
        XCTAssertEqual(PermCheck.solution(&test4), 1)
        
    }
}
