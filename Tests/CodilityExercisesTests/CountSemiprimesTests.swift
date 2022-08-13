//
//  CountSemiprimesTests.swift
//  
//
//  Created by Mary Moreira on 13/08/2022.
//

import XCTest
@testable import CodilityExercises

final class CountSemiprimesTests: XCTestCase {
func test() {
    
    var arrayTestP = [1,4,16]
    var arrayTestQ = [26,10,20]
    let result = [10,4,0]
    
    XCTAssertEqual(CountSemiprimes.solution(26, &arrayTestP, &arrayTestQ), result)
    
    }
}
