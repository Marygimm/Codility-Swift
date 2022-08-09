//
//  Triangle.swift
//  
//
//  Created by Mary Moreira on 09/08/2022.
//

import Foundation
import Algorithms

struct Triangle {
    static func solution(_ A : inout [Int]) -> Int {
        var hasTriplet = false
        
        let possibleCombinations = A.combinations(ofCount: 3)
        possibleCombinations.forEach { element in
            if checkIfTripletIsTriange(triplet: element) {
                hasTriplet = checkIfTripletIsTriange(triplet: element)
            }
        }
        
        return hasTriplet ? 1 : 0
    }
    
    static func checkIfTripletIsTriange(triplet: [Int]) -> Bool {
        guard triplet.count == 3 else { return false }
        let valueP = triplet[0]
        let valueQ = triplet[1]
        let valueR = triplet[2]
        
        return (valueP + valueQ > valueR) && (valueQ + valueR > valueP) && (valueP + valueR > valueQ)
    }
}


extension Array {
    var combinationsWithoutRepetition: [[Element]] {
        guard !isEmpty else { return [[]] }
        return Array(self[1...]).combinationsWithoutRepetition.flatMap {
            [$0, [self[0]] + $0]
            
        }
    }
}
    
