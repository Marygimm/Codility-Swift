//
//  MaxDoubleSliceSum.swift
//  
//
//  Created by Mary Moreira on 10/08/2022.
//

import Foundation

//TODO: - NEEDS to undestand better copy from
//https://github.com/sergeyleschev/codility-swift/blob/main/09.%20Maximum%20slice%20problem.%20MaxDoubleSliceSum.swift

struct MaxDoubleSliceSum {
    static func solution(_ A : inout [Int]) -> Int {
        guard A.count >= 3 else { return 0 }
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



