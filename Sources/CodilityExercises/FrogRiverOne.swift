//
//  FrogRiverOne.swift
//  
//
//  Created by Mary Moreira on 08/08/2022.
//

import Foundation

struct FrogRiverOne {
    
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
