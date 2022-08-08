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
    
    var IntValue: Int {
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
        
        let countP = P.count
        var result = [Int]()
        let conversionOfNucleotides = S.map { String($0) }.map { Nucleotides.init(rawValue: $0 )}
    
        
        for element in (0...countP - 1) {
            let elementP = P[element]
            let elementQ = Q[element]
            if  let elementFactorP = conversionOfNucleotides[elementP]?.IntValue, let elementFactorQ = conversionOfNucleotides[elementQ]?.IntValue {
                let minValue = min(elementFactorP, elementFactorQ) 
                result.append(minValue)
            }
        }

        return result
    }
}
