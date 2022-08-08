//
//  PermCheck.swift
//  
//
//  Created by Mary Moreira on 08/08/2022.
//

import Foundation

struct PermCheck {
    
    static func solution(_ A : inout [Int]) -> Int {
        
        guard let maxNumberInArray = A.max() else { return 0 }
        
        let arrayWithAllNumbers = Set(1...maxNumberInArray)
        let listSet = Set(A)
        return arrayWithAllNumbers.isSubset(of: listSet) ? 1 : 0
    }
    
    
}
