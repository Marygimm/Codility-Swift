//
//  Flags.swift
//  
//
//  Created by Mary Moreira on 11/08/2022.
//

import Foundation

struct Flags {
    static func solution(_ A : inout [Int]) -> Int {
        
        var i = 1
        var peaks: [Int] = []

        while i < A.count - 1 {
            if A[i] > A[i+1] && A[i] > A[i-1] {
                peaks.append(i)
            }
            i += 1
        }
        var diffBetweenMaxAndMinPeaks = 0
        if let last = peaks.last, let first = peaks.first {
            diffBetweenMaxAndMinPeaks = last - first

        }
        
        //second solution
        //let sqrt = Int(sqrt(Double(A.count)))
        //let min = min(sqrt, peaks.count)
        
        return Int(sqrt(Double(diffBetweenMaxAndMinPeaks)))
    }
}
