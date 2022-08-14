//
//  Fish.swift
//  
//
//  Created by Mary Moreira on 10/08/2022.
//

import Foundation

//FAIL
struct Fish {
    static func solution(_ A : inout [Int], _ B : inout [Int]) -> Int {
        
        while B.removeDuplicates().count != 1 {
            guard let index = B.firstIndex(of: 1) else { return A.count }
            let indexOfStartingFish = index
            let indexAfterStartingFish = index + 1
            let startingEatingFish = A[indexOfStartingFish]
            let sizeOfSecondFish = A[indexAfterStartingFish]
            let directionA = B[indexOfStartingFish]
            let directionB = B[indexAfterStartingFish]
            if directionA != directionB {
                let shouldWeRemoveFirstFish = startingEatingFish < sizeOfSecondFish
                let indexToRemove = shouldWeRemoveFirstFish ? indexOfStartingFish : indexAfterStartingFish
                A.remove(at: indexToRemove)
                B.remove(at: indexToRemove)
            }
        }
        return A.count
    }
}
