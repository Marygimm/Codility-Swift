//
//  TapeEquilibrium.swift
//  
//
//  Created by Mary Moreira on 07/08/2022.
//

import Foundation

struct TapeEquilibrium {
    
    // solution with 69% score but 100% of correctness
    static func solution(_ A : inout [Int]) -> Int {
        var recievedArray = A
        guard !recievedArray.isEmpty, recievedArray.count > 1 else { return 0 }

        var arrayOfDifferenceAfterSplit = [Int]()
        var sumOfRemovedNumbers = 0
        
        recievedArray.forEach { element in
            if recievedArray.count == 1 {
                return
            }
            sumOfRemovedNumbers += recievedArray.removeFirst()
            let sumOfSplitedArray = (recievedArray.reduce(0, +))
            arrayOfDifferenceAfterSplit.append(abs(sumOfRemovedNumbers - sumOfSplitedArray))
        }
        
        return arrayOfDifferenceAfterSplit.min() ?? 0
        
    }
    // solution with 100% score
    
    
    static func solution2(_ A : inout [Int]) -> Int {
        guard A.count > 1 else { return 0 }
        
        let totalSum = A.reduce(0,+)
        var lefSum = 0
        var minDif = Int.max
        
        for i in (0..<A.count-1) {
            lefSum += A[i]
            let diff = abs(2*lefSum - totalSum)
            if diff < minDif {
                minDif = diff
            }

        }
        
        return minDif
        
    }

}
