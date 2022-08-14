//
//  FrogRiverOne.swift
//  
//
//  Created by Mary Moreira on 08/08/2022.
//

import Foundation

struct FrogRiverOne {
    
    //task score 81% correctness 100%
    static func solution(_ X : Int, _ A : inout [Int]) -> Int {
        
        var arrayWithSumOfValues = Array(1..<X+1)
        var finalValueToReturn = -1
        
        
        for (index, value) in zip(A.indices, A) {
            
            if let index = arrayWithSumOfValues.firstIndex(of: value) {
                arrayWithSumOfValues.remove(at: index)
            }
            
            if arrayWithSumOfValues.isEmpty {
                finalValueToReturn = index
                break
            }
            
        }
        return finalValueToReturn
    }
    
    
    //task score 100%
    static func solution2(_ X : Int, _ A : inout [Int]) -> Int {
        var arrayB = Array(repeating: -1, count: X)
        // so we should create an array with -1 (dont have a leaf for that position) until X
        
        for i in (0..<A.count) {
            // fill the positions from 0 to X on the position that has no leaf yeat.
            if (A[i] <= X && arrayB[A[i]-1] == -1) {
                arrayB[A[i]-1] = i
            }
        }
        //if there is one space with no leaf we should return -1 and the frog cannot jump.
        guard !arrayB.contains(-1) else { return -1 }
        //on the array we should return the max value that was the last leaf saved to help the frog jump
        return arrayB.max() ?? 0
    }

static func solutionForInternet(_ X : Int, _ A : inout [Int]) -> Int {
    
    var positionCountDic = [Int : Int]()
    
    for (index, leafsPosition) in A.enumerated() {
        
        if leafsPosition < X+1 {
            if let count = positionCountDic[leafsPosition] {
                positionCountDic[leafsPosition] = count + 1
            } else {
                positionCountDic[leafsPosition] = 1
                if positionCountDic.keys.count == X {
                    return index
                }
            }
        }
    }
    
    return -1
}

}
