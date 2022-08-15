//
//  Triangle.swift
//  
//
//  Created by Mary Moreira on 09/08/2022.
//

import Foundation
import Algorithms

struct Triangle {
    static func solution(_ A : inout [Int]) -> Int {
        guard A.count >= 3 else { return 0 }
        A = A.sorted { $0 < $1 }
        
        //we know if we sorted the elements that for sure we will have A[i+2] + A[i] > A[i+1] and A[i+2] + A[i+1] > A[i] so is just one condition missing to test
        for i in (0..<A.count-2) {
            //A[i] > A[i-2] - A[i+1]
            if A[i] + A[i+1] > A[i+2] {
                return 1
            }
        }
        return 0
    }
}
