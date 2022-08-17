//
//  ParkingBill.swift
//  
//
//  Created by Mary Moreira on 17/08/2022.
//

import Foundation

struct ParkingBill {
    static func solution(_ E : inout String, _ L : inout String) -> Int {
        var costFirstHour = 2 + 3
        var duration = timestamp(L) - timestamp(E)
        
        //remove first hour on duration cause its being apply latter
        duration -= 60
        if duration > 0 { costFirstHour += Int((Double(duration) / 60.0).rounded(.up)) * 4 }
        return costFirstHour
        
    }
    
    static func timestamp(_ input: String) -> Int {
        //convert the hours to min and make the sum of all
        let components = input.components(separatedBy: ":").compactMap { Int($0) }
        return components[0] * 60 + components[1]
    }
    
}

