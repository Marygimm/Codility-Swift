//
//  NailingPlanksTests.swift
//  
//
//  Created by Mary Moreira on 13/08/2022.
//

import XCTest
@testable import CodilityExercises

final class NailingPlanksTests:XCTestCase {
    func test() {
        var arrayTestA = [1,4,5,8]
        var arrayTestB = [4,5,9,10]
        var arrayTestC = [4,6,7,10,2]
        
        XCTAssertEqual(NailingPlanks.solution(&arrayTestA, &arrayTestB, &arrayTestC), 4)
    }
}
