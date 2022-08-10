//
//  MaxDoubleSliceSumTests.swift
//  
//
//  Created by Mary Moreira on 10/08/2022.
//

import XCTest
@testable import CodilityExercises

final class MaxDoubleSliceSumTests: XCTestCase {
    func test(){
        var arrayTest1 = [3,2,6,-1,4,5,-1,2]
        
        XCTAssertEqual(MaxDoubleSliceSum.solution(&arrayTest1), 17)
    }
}
