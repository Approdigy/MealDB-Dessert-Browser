//
//  Helper.swift
//  Peter_Minwegen_Fetch_Rewards
//
//  Created by peter minwegen on 10/25/23.
//

import Foundation

// Makes instructions more legible 
func addLineNumbers(to instructions: String) -> String {
    var result = ""
    var lineNumber = 1
    
    let lines = instructions.components(separatedBy: "\n")
    for line in lines {
        if line.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            result += "\(line)\n"
        } else {
            result += "\(lineNumber))  \(line)\n"
            lineNumber += 1
        }
    }
    return result
}
