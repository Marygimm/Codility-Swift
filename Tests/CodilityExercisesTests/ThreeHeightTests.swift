//
//  TreeHeightTests.swift
//  
//
//  Created by Mary Moreira on 17/08/2022.
//

import XCTest
@testable import CodilityExercises

final class TreeHeightTests: XCTestCase {
    func test(){
        let first = Tree()
        var last = first
        for _ in 0..<3 {
            let newLeft = Tree()
            last.l = newLeft
            last.r = Tree()
            last = newLeft
        }
        XCTAssertEqual(ThreeHeight.solution(first), 3)
    }
}
