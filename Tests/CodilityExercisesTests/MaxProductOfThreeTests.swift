//
//  MaxProductOfThreeTests.swift
//  
//
//  Created by Mary Moreira on 09/08/2022.
//

import XCTest
@testable import CodilityExercises

final class MaxProductOfThreeTests: XCTestCase {
    func test(){
        var arrayToTest1 = [-3,1,2,-2,5,6]
        var arrayToTest2 = [5,6,3,2,10,3]
        
        XCTAssertEqual(MaxProductOfThree.solution(&arrayToTest1), 60)
        XCTAssertEqual(MaxProductOfThree.solution(&arrayToTest2), 300)
    }
}
