//
//  NumberOfDiscIntersections.swift
//  
//
//  Created by Mary Moreira on 09/08/2022.
//

import Foundation

struct NumberOfDiscIntersections {
    static func solution(_ A : inout [Int]) -> Int {
        
        guard !A.isEmpty else { return 0 }
        
        var start = Array(repeating: 0, count: A.count)
        
        for i in (0..<A.count) {
            let radius = A[i]
            var startPos = i - radius
            
            if startPos < 0 {
                startPos = 0
            }
            
            start[startPos] += 1
        }
        var total = 0
        for i in (0..<start.count) {
            total += start[i]
            start[i] = total
        }
        var totalIntersections = 0
        for i in (0..<A.count) {
            let radius = A[i]
            var endPos = i+radius
            if endPos > A.count-1 {
                endPos = A.count-1
            }
            let intersections = max(start[i], start[endPos]) - (i+1)
            totalIntersections += intersections
        }
        
        
        return totalIntersections > 10000000 ? -1 : totalIntersections
 
    }
    
}
