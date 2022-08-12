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

        guard peaks.count > 0 else { return 0 }
            
            var result = min(peaks.count, Int(sqrt(Double(A.count))) + 1)
            
            while result >= 1 {
                var lastFlag = peaks[0]
                var flagsSet = 1
                for i in peaks.dropFirst(1) {
                    if i - lastFlag >= result {
                        lastFlag = i
                        flagsSet += 1
                    }
                }
                
                if flagsSet >= result {
                    return result
                } else {
                    result -= 1
                }
            }
            
            return result
 
    }
}
