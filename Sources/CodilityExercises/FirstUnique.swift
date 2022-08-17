//
// FirstUnique.swift
//  
//
//  Created by Mary Moreira on 17/08/2022.
//

import Foundation


struct FirstUnique {
    static func solution(_ A : inout [Int]) -> Int {
        
        guard !A.isEmpty else { return -1 }
        if A.count == 1 {
            return A[0]
        }
        var dict = [Int: Int]()
        
        for number in A {
            if let count = dict[number] {
                dict[number] = count + 1
            } else {
                dict[number] = 1
            }
        }
        
        for number in A {
            if dict[number] == 1 {
                return number
            }
        }
        
        return -1
    }
}
