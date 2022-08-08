
import XCTest
@testable import CodilityExercises

/**
 Write a function:
 
 public func solution(_ A : inout [Int]) -> Int

 that, given an array A consisting of N integers fulfilling the above conditions, returns the value of the unpaired element.

 For example, given array A such that:

   A[0] = 9  A[1] = 3  A[2] = 9
   A[3] = 3  A[4] = 9  A[5] = 7
   A[6] = 9
 the function should return 7, as explained in the example above.

 Write an efficient algorithm for the following assumptions:

 N is an odd integer within the range [1..1,000,000];
 each element of array A is an integer within the range [1..1,000,000,000];
 all but one of the values in A occur an even number of times.*/

final class OddOccurrencesInArrayTests: XCTestCase {
    func test() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        var arrayToTest1 = [9,3,9,3,9,7,9]
        var arrayToTest2 = [9,3,9,5,9,9,9]
        var arrayToTest3 = [1,1,1,4,5,5,5]
        var arrayToTest4 = [1]
        var arrayToTest5 = [1,2,1]
        var arrayToTest6 = [1,2,1,1,1]


        XCTAssertEqual(OddOccurrencesInArray.unpairElement(&arrayToTest1), 7)
        XCTAssertEqual(OddOccurrencesInArray.unpairElement(&arrayToTest2), 5)
        XCTAssertEqual(OddOccurrencesInArray.unpairElement(&arrayToTest3), 4)
        XCTAssertEqual(OddOccurrencesInArray.unpairElement(&arrayToTest4), 1)
        XCTAssertEqual(OddOccurrencesInArray.unpairElement(&arrayToTest5), 2)
        XCTAssertEqual(OddOccurrencesInArray.unpairElement(&arrayToTest6), 2)
        
        var stringSelected = "CAGCCTA"
        var arrayP = [2,5,0]
        var arrayQ = [4,5,6]
        
        XCTAssertEqual(GenomicRangeQuery.solution(&stringSelected, &arrayP, &arrayQ), [2,4,1])
    }
}
