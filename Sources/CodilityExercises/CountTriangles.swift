//
//  CountTriangles.swift
//  
//
//  Created by Mary Moreira on 11/08/2022.
//

import Foundation

struct CountTriangles {
    static func solution(_ A : inout [Int]) -> Int {
        guard A.count >= 3 else { return 0 }
        var count = 0
        
        let possibleCombinations = A.combinations(ofCount: 3)
        possibleCombinations.forEach { element in
            if checkIfTripletIsTriange(triplet: element) {
                count += checkIfTripletIsTriange(triplet: element) ? 1 : 0
            }
        }
        
        return count
    }
    
    static func checkIfTripletIsTriange(triplet: [Int]) -> Bool {
        guard triplet.count == 3 else { return false }
        let valueP = triplet[0]
        let valueQ = triplet[1]
        let valueR = triplet[2]
        
        return (valueP + valueQ > valueR) && (valueQ + valueR > valueP) && (valueP + valueR > valueQ)
    }
        
    //https://github.com/hyeonmin-yoo/Codility-Swift/blob/master/Codility/Lesson15%20CountTriangles.playground/Contents.swift
    public func solution2(_ A : inout [Int]) -> Int {
        
        let countA = A.count
        if countA < 3 {
            return 0
        }
        
        A.sort()
        
        var countTriangle = 0
        for outerIndex in 0..<countA - 2 {
            
            var countSmallerLegnth = 0
            for InnerIndex in outerIndex + 1..<countA - 1 {
                
                while countSmallerLegnth < countA
                        && A[outerIndex] + A[InnerIndex] > A[countSmallerLegnth] {
                    countSmallerLegnth += 1
                }
                countTriangle += countSmallerLegnth - InnerIndex - 1
            }
        }
        
        return countTriangle
        
    }
}
