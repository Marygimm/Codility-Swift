//
//  LadderTests.swift
//  
//
//  Created by Mary Moreira on 13/08/2022.
//

import XCTest
@testable import CodilityExercises

final class LadderTests: XCTestCase {
    func test(){
        var arrayTestA = [4,4,5,5,1]
        var arrayTestB = [3,2,4,3,1]
        
        let resultTest1 = [5,1,8,0,1]
        XCTAssertEqual(Ladder.solution(&arrayTestA, &arrayTestB), resultTest1)
    }
}

