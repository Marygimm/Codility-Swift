//
//  ChocolatesByNumbersTests.swift
//  
//
//  Created by Mary Moreira on 11/08/2022.
//

import XCTest
@testable import CodilityExercises

final class ChocolatesByNumbersTests: XCTestCase {
    func test(){
        
        XCTAssertEqual(ChocolatesByNumbers.solution(10, 4), 5)
        XCTAssertEqual(ChocolatesByNumbers.solution(15, 5), 3)
        XCTAssertEqual(ChocolatesByNumbers.solution(21, 9), 7)


    }
}
