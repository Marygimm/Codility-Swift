//
//  MaxProfit.swift
//  
//
//  Created by Mary Moreira on 10/08/2022.
//

import Foundation
struct MaxProfit {
    static func solution(_ A : inout [Int]) -> Int {
        var profit = 0
        
        var cheapest = A.first ?? 0
        
        for element in A {
            cheapest = min(cheapest, element)
            profit = max(profit, element - cheapest)
        }
        
        return profit
    }
}
