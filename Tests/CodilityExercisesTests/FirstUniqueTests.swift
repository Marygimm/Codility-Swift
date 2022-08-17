//
//  FirstUniqueTests.swift
//  
//
//  Created by Mary Moreira on 17/08/2022.
//

import XCTest
@testable import CodilityExercises

final class FirstUniqueTests: XCTestCase {
    func test() {
        var array1 = [4,10,5,4,2,10]
        var array2 = [1,4,3,3,1,2]
        var array3 = [6,4,4,6]
        var array4 = [0]
        var array5 = [1, 1, 2]


        
        XCTAssertEqual(FirstUnique.solution(&array1), 5)
        XCTAssertEqual(FirstUnique.solution(&array2), 4)
        XCTAssertEqual(FirstUnique.solution(&array3), -1)
        XCTAssertEqual(FirstUnique.solution(&array4), 0)
        XCTAssertEqual(FirstUnique.solution(&array5), 2)


    }
}
