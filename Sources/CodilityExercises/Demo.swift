//
//  Demo.swift
//  
//
//  Created by Mary Moreira on 16/08/2022.
//

import Foundation

struct Demo {
    static func solution(_ A : inout [Int]) -> Int {
        
        A = A.sorted { $0 < $1 }
        
        if A[A.count-1] < 0 {
            return 1
        }
        
        if !A.contains(1) {
            return 1
        }
        
        for i in (0..<A.count-1) {
            if A[i] > 0, A[i+1] - A[i] > 1 {
                return A[i] + 1
            }
        }
        
        return A[A.count-1] + 1
    }
}
