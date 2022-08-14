//
//  MissingIntegerTests.swift
//  
//
//  Created by Mary Moreira on 08/08/2022.
//

import XCTest
@testable import CodilityExercises

/**
 This is a demo task.
 
 Write a function:
 
 public func solution(_ A : inout [Int]) -> Int
 
 that, given an array A of N integers, returns the smallest positive integer (greater than 0) that does not occur in A.
 
 For example, given A = [1, 3, 6, 4, 1, 2], the function should return 5.
 
 Given A = [1, 2, 3], the function should return 4.
 
 Given A = [−1, −3], the function should return 1.
 
 Write an efficient algorithm for the following assumptions:
 
 N is an integer within the range [1..100,000];
 each element of array A is an integer within the range [−1,000,000..1,000,000].*/

final class MissingIntegerTests: XCTestCase {
    func test() {
        
        var testArray1 = [1, 2, 3]
        var testArray2 = [-1, -3]
        var testArray3 = [1, 3, 6, 4, 1, 2]
        var testArray4 = [1,3,6,6,7,3, 1, 2]
        var testArray6 = [2]

        
       
        XCTAssertEqual(MissingInteger.solution(&testArray1), 4)
        XCTAssertEqual(MissingInteger.solution(&testArray2), 1)
        XCTAssertEqual(MissingInteger.solution(&testArray3), 5)
        XCTAssertEqual(MissingInteger.solution(&testArray4), 4)
        XCTAssertEqual(MissingInteger.solution(&testArray6), 1)
        
    }
}
