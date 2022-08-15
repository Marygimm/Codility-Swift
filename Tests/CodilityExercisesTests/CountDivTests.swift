
import XCTest
@testable import CodilityExercises

/**
 Write a function:

 public func solution(_ A : Int, _ B : Int, _ K : Int) -> Int

 that, given three integers A, B and K, returns the number of integers within the range [A..B] that are divisible by K, i.e.:

 { i : A ≤ i ≤ B, i mod K = 0 }

 For example, for A = 6, B = 11 and K = 2, your function should return 3, because there are three numbers divisible by 2 within the range [6..11], namely 6, 8 and 10.

 Write an efficient algorithm for the following assumptions:

 A and B are integers within the range [0..2,000,000,000];
 K is an integer within the range [1..2,000,000,000];
 A ≤ B.
 Copyright 2009–2022 by Codility Limited. All Rights Reserved. Unauthorized copying, publication or disclosure prohibited.
*/

final class CountDivTests: XCTestCase {
    func test() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(CountDiv.solution(6, 11, 2), 3)
        XCTAssertEqual(CountDiv.solution2(6, 11, 2), 3)
        XCTAssertEqual(CountDiv.solution2(0, 10, 2), 6)



    }
}
