//
//  CommonPrimeDivisors.swift
//  
//https://github.com/alexgolikov/codility-swift/blob/master/Lessons/12.%20Euclidean%20algorithm/CommonPrimeDivisors.swift
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

   static func samePrimeDivisors(_ a: Int, _ b: Int) -> Bool {
        let abGcd = gcd(a, b)

        var aVar = a
        var bVar = b

        while aVar != 1 {
            let aGcd = gcd(aVar, abGcd)

            if aGcd == 1 {
                break
            }

            aVar /= aGcd
        }

        if aVar != 1 {
            return false
        }

        while bVar != 1 {
            let bGcd = gcd(bVar, abGcd)

            if bGcd == 1 {
                break
            }

            bVar /= bGcd
        }

        return bVar == 1
    }

    static func solution(_ A : inout [Int], _ B : inout [Int]) -> Int {
        var result = 0

        for i in 0..<A.count {
            result += samePrimeDivisors(A[i], B[i]) ? 1 : 0
        }

        return result
    }
}
