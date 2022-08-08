import XCTest
@testable import CodilityExercises

final class BinaryGapTests: XCTestCase {
    func test() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(BinaryGap.solution(1041), 5)
        XCTAssertEqual(BinaryGap.solution(38), 2)
        XCTAssertEqual(BinaryGap.solution(32), 0)
        XCTAssertEqual(BinaryGap.solution(15), 0)
        XCTAssertEqual(BinaryGap.solution(5), 1)
        XCTAssertEqual(BinaryGap.solution(529), 4)

    }
}
