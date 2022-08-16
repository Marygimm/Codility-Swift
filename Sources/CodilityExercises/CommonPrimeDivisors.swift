//
//  CommonPrimeDivisors.swift
//  
//  Created by Mary Moreira on 13/08/2022.
//

import Foundation

struct CommonPrimeDivisors {
   static func gcd(_ a: Int, _ b: Int) -> Int {
        if a % b == 0 {
            return b
        } else {
            return gcd(b, a % b)
        }
    }
    
    static func solution(_ A : inout [Int], _ B : inout [Int]) -> Int {
        let size = A.count
        var a = 0, b = 0, D = 0, count = 0
        
        for i in (0..<size) {
            a = A[i]
            b = B[i]
            D = gcd(a, b)
            
            while gcd(a, D) != 1 {
                a /= gcd(a, D)
            }
            while gcd(b, D) != 1 {
                b /= gcd(b, D)
            }
            if a == 1 && b == 1 {
                count += 1
            }
        }
        return count
    }
    
    
}
