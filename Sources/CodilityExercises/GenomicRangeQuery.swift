//
//  GenomicRangeQuery.swift
//  
//
//  Created by Mary Moreira on 08/08/2022.
//

import Foundation

enum Nucleotides: String, CaseIterable {
    case A
    case C
    case G
    case T
    
    var intValue: Int {
        var number = 0
        switch self {
        case .A:
            number = 1
        case .C:
            number = 2
        case .G:
            number = 3
        case .T:
            number = 4
            
        }
        return number
    }
}

struct GenomicRangeQuery {
    static func solution(_ S : inout String, _ P : inout [Int], _ Q : inout [Int]) -> [Int] {
        
        var nucleotideA = Array(repeating: 0, count: S.count)
        var nucleotideC = Array(repeating: 0, count: S.count)
        var nucleotideG = Array(repeating: 0, count: S.count)
        var nucleotideT = Array(repeating: 0, count: S.count)
        var result = [Int]()
        let stringReceived = S.map { String($0) }
        var a=0, c=0, g=0, t=0
        
        //we are going to iterate and populate the array of corresponding counter of the nucleotide increase according to the moment of that index on position 0 we have for exemple 1 counter and on position 4 we have 2 counters, this means that we increased the counting of that nucleotide
        for i in (0..<S.count) {
            if stringReceived[i] == Nucleotides.A.rawValue {
                a += 1
            } else if stringReceived[i] == Nucleotides.C.rawValue {
                c += 1
            } else if stringReceived[i] == Nucleotides.G.rawValue {
                g += 1
            } else if stringReceived[i] == Nucleotides.T.rawValue {
                t += 1
            }
            
            nucleotideA[i] = a
            nucleotideC[i] = c
            nucleotideG[i] = g
            nucleotideT[i] = t
        }
        
        //to create the result array we are going to check if the value of the first index is smaller that the last index, if so we increase the factor or if the value is correspondent to that index is the nucleotide in particular (P = 5 and Q = 5) same nucleotide on CAGCCTA so the T is the nucleotide and the factor will be 4
        for i in (0..<P.count) {
            if P[i] == Q[i] {
                if let intValue = Nucleotides.init(rawValue: stringReceived[P[i]])?.intValue {
                    result.append(intValue)
                }
            } else if nucleotideA[P[i]] < nucleotideA[Q[i]] || stringReceived[P[i]] == Nucleotides.A.rawValue {
                result.append(1)
            } else if nucleotideC[P[i]] < nucleotideC[Q[i]] || stringReceived[P[i]] == Nucleotides.C.rawValue {
                result.append(2)
            } else if nucleotideG[P[i]] < nucleotideG[Q[i]] || stringReceived[P[i]] == Nucleotides.G.rawValue {
                result.append(3)
            } else if nucleotideT[P[i]] < nucleotideT[Q[i]] || stringReceived[P[i]] == Nucleotides.T.rawValue {
                result.append(4)
        }
            
    }
        return result
    }
}
