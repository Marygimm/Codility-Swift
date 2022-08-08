//
//  TapeEquilibrium.swift
//  
//
//  Created by Mary Moreira on 07/08/2022.
//

import Foundation

struct TapeEquilibrium {
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
    
    static func solution2(_ A : inout [Int]) -> Int {
    guard !A.isEmpty, A.count > 1 else { return 0 }
      var leftSum = A[0]
      var rightSum = A[1..<A.count].reduce(0, +)
      var minDiff = abs(leftSum - rightSum)

      for p in 2..<A.count {
        leftSum += A[p-1]
        rightSum -= A[p-1]
        let diff = abs(leftSum - rightSum)
        if minDiff > diff {
          minDiff = diff
        }
      }
      return minDiff
    }    

}
