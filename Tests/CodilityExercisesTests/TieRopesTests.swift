//
//  TieRopesTests.swift
//  
//
//  Created by Mary Moreira on 11/08/2022.
//

import XCTest
@testable import CodilityExercises

final class TieRopesTests: XCTestCase {
    func test(){
        
        var testArray1 = [1,2,3,4,1,1,3]
        
        XCTAssertEqual(TieRopes.solution(4, &testArray1), 3)
    }
}
