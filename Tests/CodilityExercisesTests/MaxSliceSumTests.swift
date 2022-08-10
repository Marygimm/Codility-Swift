//
//  MaxSliceSumTests.swift
//  
//
//  Created by Mary Moreira on 10/08/2022.
//

import XCTest
@testable import CodilityExercises

final class MaxSliceSumTests: XCTestCase {
    func test(){
        
        var arrayToTest = [3,2,-6,4,0]
        
        XCTAssertEqual(MaxSliceSum.solution(&arrayToTest), 5)
    }
}
