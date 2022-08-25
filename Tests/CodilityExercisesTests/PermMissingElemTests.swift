//
//  PermMissingElemTests.swift
//  
//
//  Created by Mary Moreira on 07/08/2022.
//


import XCTest
@testable import CodilityExercises

/**
 Write a function:

 public func solution(_ A : inout [Int]) -> Int

 that, given an array A, returns the value of the missing element.

 For example, given array A such that:

   A[0] = 2
   A[1] = 3
   A[2] = 1
   A[3] = 5
 the function should return 4, as it is the missing element.

 Write an efficient algorithm for the following assumptions:

 N is an integer within the range [0..100,000];
 the elements of A are all distinct;
 each element of array A is an integer within the range [1..(N + 1)].
*/

final class PermMissingElemTests: XCTestCase {
    func test() {
        
        var arrayToTest1 = [1,2,3,5]
        var arrayToTest3 = [4, 2, 3, 5, 1, 6, 8, 9]
        var arrayToTest6 = [1,2,3,4,5,6,7,9]
        var arrayToTest7 = [1,3,4,5,6,7]



        // mine solution
        XCTAssertEqual(PermMissingElem.solution(&arrayToTest1), 4)
        XCTAssertEqual(PermMissingElem.solution(&arrayToTest3), 7)
        XCTAssertEqual(PermMissingElem.solution(&arrayToTest6), 8)
        XCTAssertEqual(PermMissingElem.solution(&arrayToTest7), 2)
        
        // guy solution
        XCTAssertEqual(PermMissingElem.solution2(&arrayToTest1), 4)
        XCTAssertEqual(PermMissingElem.solution2(&arrayToTest6), 8)
        XCTAssertEqual(PermMissingElem.solution2(&arrayToTest7), 2)



    }}
