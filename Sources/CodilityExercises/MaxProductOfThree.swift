//
// MaxProductOfThree.swift
//  
//
//  Created by Mary Moreira on 09/08/2022.
//

import Foundation

struct MaxProductOfThree {
    static func solution(_ A : inout [Int]) -> Int {
        
        guard A.count >= 3 else { return 0 }
        // enumerated new array and save previous index for the correct position of the received array
        // on descending order
        let sortedElementsWithDescending = A.sorted {$0 > $1 }
        
        let maxTriplet = sortedElementsWithDescending.dropLast(3)
        return multipleTriplesValue(triplet: Array(maxTriplet))
    }
    
    static func multipleTriplesValue(triplet: [Int]) -> Int {
        var count = 1
        
        triplet.forEach { element in
            count *= element
        }
        
        return count
        
    }
}
