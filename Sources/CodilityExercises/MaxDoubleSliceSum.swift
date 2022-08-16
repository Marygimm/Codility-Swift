//
//  MaxDoubleSliceSum.swift
//  
//
//  Created by Mary Moreira on 10/08/2022.
//

import Foundation

struct MaxDoubleSliceSum {
 
    static func solution(_ A : inout [Int]) -> Int {
        let size = A.count
        //we have three edges XYZ so we need to have at least 3 elements KADANE ALGORITHM
        guard size > 3 else { return 0 }
        var left = [Int](repeatElement(0, count: size))
        var right = [Int](repeatElement(0, count: size))
        
        var sum = 0
        
        for i in (1..<size-1) {
            sum += A[i]
            if sum < 0 {
                sum = 0
            }
            left[i] = sum
        }
        sum = 0

        for i in ((1..<size-2).reversed()) {
            sum += A[i]
            if sum < 0 {
                sum = 0
            }
            right[i] = sum
        }
        
        var maxValue = 0
        
        for i in (0..<size-2) {
            maxValue = max(maxValue, left[i]+right[i+2])
        }
        
        return maxValue
    }
    
    //https://github.com/sergeyleschev/codility-swift/blob/main/09.%20Maximum%20slice%20problem.%20MaxDoubleSliceSum.swift
    static func solution2(_ A : inout [Int]) -> Int {
        guard A.count > 3 else { return 0 }
        let count = A.count
        var left = [Int](repeatElement(0, count: count))
        var right = [Int](repeatElement(0, count: count))
        var solution = 0
        
        for i in 1..<count {
            left[i] = max(A[i] + left[i - 1], 0)
            right[count - i - 1] = max(A[count - i - 1] + right[count - i], 0)
        }
        
        for i in 1..<count - 1 { solution = max(solution, left[i - 1] + right[i + 1]) }
        return solution
        
    }
}



