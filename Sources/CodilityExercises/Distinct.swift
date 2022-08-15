//
// Distinct.swift
//  
//
//  Created by Mary Moreira on 09/08/2022.
//

import Foundation

struct Distinct {
    
    //100% in both
    static func solution(_ A : inout [Int]) -> Int {
        guard !A.isEmpty else { return 0 }
        
        let setValue = Set(A)
        
        return setValue.count
    }
    
    static func solution2(_ A : inout [Int]) -> Int {
        guard !A.isEmpty else { return 0 }
        A = A.sorted { $0 < $1 }
        
        var counter = 1
        
        for i in (1..<A.count) {
            if A[i] != A[i-1] {
                counter += 1
            }
        }
        return counter
      
    }
    
    
}
