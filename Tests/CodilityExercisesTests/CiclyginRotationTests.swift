import XCTest
@testable import CodilityExercises

/**
 Write a function:

 class Solution { public int[] solution(int[] A, int K); }

 that, given an array A consisting of N integers and an integer K, returns the array A rotated K times.

 For example, given

     A = [3, 8, 9, 7, 6]
     K = 3
 the function should return [9, 7, 6, 3, 8]. Three rotations were made:

     [3, 8, 9, 7, 6] -> [6, 3, 8, 9, 7]
     [6, 3, 8, 9, 7] -> [7, 6, 3, 8, 9]
     [7, 6, 3, 8, 9] -> [9, 7, 6, 3, 8]
 For another example, given

     A = [0, 0, 0]
     K = 1
 the function should return [0, 0, 0]

 Given

     A = [1, 2, 3, 4]
     K = 4
 the function should return [1, 2, 3, 4]

 Assume that:

 N and K are integers within the range [0..100];
 each element of array A is an integer within the range [−1,000..1,000].
 In your solution, focus on correctness. The performance of your solution will not be the focus of the assessment.
 */

final class CiclyginRotationTests: XCTestCase {
    func test() {
        var arrayTest1 = [3, -8, -1000, 7, 1000, 100]
        let arrayExpected1 = [-1000, 7, 1000, 100, 3, -8]
        let numberOfTimes1 = 100

        XCTAssertEqual(CiclyingRotation.solutionCiclying(&arrayTest1, numberOfTimes1), arrayExpected1)
        
        var arrayTest2 = [1, 2, 3, 4, 5, 6]
        let arrayExpected2 = [4, 5, 6, 1, 2, 3]
        let numberOfTimes2 = 3

        XCTAssertEqual(CiclyingRotation.solutionCiclying(&arrayTest2, numberOfTimes2), arrayExpected2)
        
        var arrayTest3 = [Int]()
        let arrayExpected3 = [Int]()
        let numberOfTimes3 = 3

        XCTAssertEqual(CiclyingRotation.solutionCiclying(&arrayTest3, numberOfTimes3), arrayExpected3)
        
        var arrayTest4 = [1, 2, 3, 4, 5, 6]
        let arrayExpected4 = [1, 2, 3, 4, 5, 6]
        let numberOfTimes4 = 6
        
        XCTAssertEqual(CiclyingRotation.solutionCiclying(&arrayTest4, numberOfTimes4), arrayExpected4)


    }
}
                  
