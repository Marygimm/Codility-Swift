//
//  CountDistinctSlices.swift
//  
//
//  Created by Mary Moreira on 11/08/2022.
//

import Foundation

struct CountDistinctSlices {

    static func solution(_ M : Int, _ A : inout [Int]) -> Int {
        let maxResult = 1_000_000_000
        var result = 0
        var slice = [Int: Int]()
        var leftIndex = 0
        
        for index in 0..<A.count {
            let element = A[index]
            if let existedIndex = slice[element] {
                for k in leftIndex...existedIndex { slice[A[k]] = nil }
                leftIndex = existedIndex + 1
                slice[element] = index
                result += slice.count
            } else {
                slice[element] = index
                result += slice.count
            }
            if result >= maxResult { return maxResult }
        }
        return result
        
    }
}
