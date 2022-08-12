//
//  Peaks.swift
//  
//
//  Created by Mary Moreira on 12/08/2022.
//

import Foundation

struct Peaks {
    
    static func solution(_ A : inout [Int]) -> Int {
        guard A.count > 2 else { return 0 }
        
        var peaks = Array(repeating: false, count: A.count)
        var peaksCount = 0
        
        for i in 1..<(A.count-1) {
            if A[i-1] < A[i], A[i] > A[i+1] {
                peaks[i] = true
                peaksCount += 1
            }
        }
        
        guard peaksCount > 0 else { return 0 }
        
        var result = peaksCount
        
        while result > 1 {
            guard (A.count % result) == 0 else {
                result -= 1
                continue
            }
            
            let groupSize = A.count / result
            
            var allGroupsHavePeaks = true
            
            for i in 0..<result {
                var groupHasPeak = false
                for j in 0..<groupSize {
                    if peaks[i * groupSize + j] {
                        groupHasPeak = true
                        break
                    }
                }
                
                if groupHasPeak == false {
                    allGroupsHavePeaks = false
                    break
                }
            }
            
            if allGroupsHavePeaks {
                return result
            } else {
                result -= 1
            }
        }
        
        return result
    }
    
    
    static func solution2(_ A : inout [Int]) -> Int {
        let N = A.count
        if N < 3 { return 0 }
        
        let peaks = Array(1..<N-1).filter { A[$0] > max(A[$0 - 1], A[$0 + 1]) }
        let components = Array((1...N).reversed()).filter { N % $0 == 0 }
        
        var ret = 0
        for component in components {
            if Set(peaks.map { $0 / component }).count == N / component {
                ret = N / component
            }
        }
        return ret
    }
}
