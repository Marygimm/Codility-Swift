//
//  TapeEquilibriumTests.swift
//  
//
//  Created by Mary Moreira on 07/08/2022.
//

import XCTest
@testable import CodilityExercises

/**
 Write a function:

 public func solution(_ A : inout [Int]) -> Int

 that, given a non-empty array A of N integers, returns the minimal difference that can be achieved.

 For example, given:

   A[0] = 3
   A[1] = 1
   A[2] = 2
   A[3] = 4
   A[4] = 3
 the function should return 1, as explained above.

 Write an efficient algorithm for the following assumptions:

 N is an integer within the range [2..100,000];
 each element of array A is an integer within the range [−1,000..1,000].
*/

final class TapeEquilibriumTests: XCTestCase {
    func test() {
        var arrayToTest1 = [3,1,2,4,3]
        var arrayToTest2 = [Int]()
        var arrayToTest3 = [2,4]
        var arrayToTest4 = [900, 100, -1500, 200, 100]
        


    
        
        XCTAssertEqual(TapeEquilibrium.solution(&arrayToTest1), 1)
        XCTAssertEqual(TapeEquilibrium.solution(&arrayToTest2), 0)
        XCTAssertEqual(TapeEquilibrium.solution(&arrayToTest3), 2)
        XCTAssertEqual(TapeEquilibrium.solution(&arrayToTest4), 400)
        
        XCTAssertEqual(TapeEquilibrium.solution2(&arrayToTest1), 1)
        XCTAssertEqual(TapeEquilibrium.solution2(&arrayToTest2), 0)
        XCTAssertEqual(TapeEquilibrium.solution2(&arrayToTest3), 2)
        XCTAssertEqual(TapeEquilibrium.solution2(&arrayToTest4), 400)



    }}
