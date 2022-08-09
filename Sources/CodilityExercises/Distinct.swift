//
// Distinct.swift
//  
//
//  Created by Mary Moreira on 09/08/2022.
//

import Foundation

struct Distinct {
    
    static func solution(_ A : inout [Int]) -> Int {
        guard !A.isEmpty else { return 0 }
        
        let setValue = Set(A)
        
        return setValue.count
    }
    
    
}
