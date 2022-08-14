//
//  PermCheck.swift
//  
//
//  Created by Mary Moreira on 08/08/2022.
//

import Foundation

struct PermCheck {

    static func solution(_ A : inout [Int]) -> Int {
        guard !A.isEmpty else  { return 0 }
        
        // because it will always start with 1 if we order the sequence we can check that the value will always correspond to index +1 otherwise is not a permutation
        A = A.sorted {$0 < $1}
        
        for i in (0..<A.count) {
            if A[i] != i+1 {
                return 0
            }
        }
        return 1
        
    }
    
}
