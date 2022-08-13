//
//  CommonPrimeDivisorsTests.swift
//  
//
//  Created by Mary Moreira on 13/08/2022.
//

import XCTest
@testable import CodilityExercises

final class CommonPrimeDivisorsTests: XCTestCase {
    func test(){
        var arrayTestA = [15,10,3]
        var arrayTestB = [75,30,5]
        
        XCTAssertEqual(CommonPrimeDivisors.solution(&arrayTestA, &arrayTestB), 1)
    }
}
