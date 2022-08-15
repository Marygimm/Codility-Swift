//
//  Fish.swift
//  
//
//  Created by Mary Moreira on 10/08/2022.
//

import Foundation

struct Fish {
    static func solution(_ A : inout [Int], _ B : inout [Int]) -> Int {
        
        var counter = 0
        var downStreamFishSize = [Int]()
        
        for i in (0..<B.count) {
            if B[i] == 1 {
                downStreamFishSize.append(A[i])
            }
            else {
                while !downStreamFishSize.isEmpty {
                    if let last = downStreamFishSize.last, last > A[i] {
                        counter += 1
                        break
                    } else if let last = downStreamFishSize.last, last < A[i] {
                        counter += 1
                        downStreamFishSize.popLast()
                    }
                }
            }
        }
        return A.count - counter
    }
}
