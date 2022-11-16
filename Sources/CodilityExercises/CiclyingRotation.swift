//
//  CiclyingRotation.swift
//  
//
//  Created by Mary Moreira on 07/08/2022.
//

struct CiclyingRotation {
    
    // treat like a stack and pop off first and add to end
    static func solutionCiclying(_ A : inout [Int], _ K : Int) -> [Int] {
        
        if A.isEmpty || K == 0 || A.count == K {
            return A
        }
        
        var numberOfIteractions = 0
        
        while numberOfIteractions != K {
            if let lastElementOfArray = A.last {
                A.insert(lastElementOfArray, at: 0)
                A.removeLast()
                numberOfIteractions += 1
            }
        }
        return A
    }
}
