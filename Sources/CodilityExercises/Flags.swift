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
    
    static func solution2(_ A : inout [Int]) -> Int {
        guard A.count >= 3 else { return 0 }
        var i = 1
        var peaks: [Int] = []

        //Calculation to know numbers of peaks
        while i < A.count - 1 {
            if A[i] > A[i+1] && A[i] > A[i-1] {
                peaks.append(i)
            }
            i += 1
        }

        guard peaks.count > 0 else { return 0 }
        if peaks.count == 1 {
            return 1
        }
        
        var countFlags = 1
        var maxNumberOfPickes = 0
        //we will start with the min number between the picks and the sqrt of the A.count the +1 is just one more iteraction to make sure that we dont lost any value on the middle
        let minNumber = min(peaks.count, Int(sqrt(Double(A.count)))) + 1
        
        for k in (1...minNumber).reversed() {
            var lastFlag = 0
            countFlags = 1
            
            //we are going to check the distance between one peak and the other and count how many flags we put already.
            for i in (1..<peaks.count) {
                if peaks[i] - peaks[lastFlag] >= k && countFlags < k  {
                    countFlags += 1
                    lastFlag = i
                }
            }
                if countFlags < maxNumberOfPickes {
                    return maxNumberOfPickes
                } else if maxNumberOfPickes < countFlags {
                    maxNumberOfPickes = countFlags
                }
        }
       return maxNumberOfPickes
            
    }
}
