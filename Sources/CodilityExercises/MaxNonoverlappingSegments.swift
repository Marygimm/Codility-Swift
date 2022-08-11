//
//  MaxNonoverlappingSegments.swift
//  
//
//  Created by Mary Moreira on 11/08/2022.
//

import Foundation

struct MaxNonoverlappingSegments {
    static func solution(_ A : inout [Int], _ B : inout [Int]) -> Int {
        var currentPosition = -1
        var segmentCount = 0
        
        for element in (0..<A.count) {
            if A[element] > currentPosition {
                currentPosition = B[element]
                segmentCount += 1
            }
        }
        
        return segmentCount
            
    }
}
