//
//  BinaryGap.swift
//  
// 
//  Created by Mary Moreira on 07/08/2022.
//

import Foundation

/**
 Write a function:

 class Solution { public int solution(int N); }

 that, given a positive integer N, returns the length of its longest binary gap. The function should return 0 if N doesn't contain a binary gap.

 For example, given N = 1041 the function should return 5, because N has binary representation 10000010001 and so its longest binary gap is of length 5. Given N = 32 the function should return 0, because N has binary representation '100000' and thus no binary gaps.

 Write an efficient algorithm for the following assumptions:

 N is an integer within the range [1..2,147,483,647].
 */

struct BinaryGap {
   static public func solution(_ N : Int) -> Int {

       let binaryString = String(N, radix: 2)
        var binaryGap = 0
        var localBinaryGap = 0
        guard binaryString.contains("0") else { return 0 }

        for character in binaryString {
            if character == "0" {
                localBinaryGap += 1
            } else {
                if localBinaryGap > binaryGap {
                    binaryGap = localBinaryGap
                }
                localBinaryGap = 0
            }
        }
        return binaryGap
    }
}

