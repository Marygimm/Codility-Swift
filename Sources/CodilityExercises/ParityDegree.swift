//
//  ParityDegree.swift
//  
//
//  Created by Mary Moreira on 17/08/2022.
//

import Foundation

struct ParityDegree {
    static func solution(_ N : Int) -> Int {
            // Number of bits in a decimal integer
            let bitsCount = Int(log2(Double(N)))
            var bitIndex = bitsCount
            while bitIndex >= 0 {
                let number = Int(pow(2, Float(bitIndex)))
                if N % number == 0 {
                    return bitIndex
                }
                bitIndex -= 1
            }
            fatalError()
        }
}
