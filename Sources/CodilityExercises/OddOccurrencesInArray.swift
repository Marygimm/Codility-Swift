//
//  OddOccurrencesInArray.swift
//  
//
//  Created by Mary Moreira on 07/08/2022.
//

import Foundation

struct OddOccurrencesInArray {
    static func solution(_ A : inout [Int]) -> Int {
        let count = A.count
        guard count > 0 else { return 0 }
        if count == 1 { return A[0] }
        var dict = Set<Int>()
            
        for number in A {
            if dict.contains(number) {
                dict.remove(number)
            } else {
                dict.insert(number)
            }
        }
            
        return dict.first!
    }
}
