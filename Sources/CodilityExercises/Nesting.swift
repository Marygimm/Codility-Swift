//
//  Nesting.swift
//  
//
//  Created by Mary Moreira on 10/08/2022.
//

import Foundation

struct Nesting {

    static func solution(_ S : inout String) -> Int {
        let arr = S.map { String($0) }
        if arr.isEmpty {
            return 1
        }
        var counter = 0
        for i in (0..<arr.count) {
            if arr[i] == "(" {
                counter += 1
            } else if arr[i] == ")" {
                counter -= 1
            }
            if counter < 0 {
                return 0
            }
        }
        
        return counter == 0 ? 1 : 0
    }
}
