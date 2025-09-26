//
//  WordFreqCount.swift
//  Assignment2
//
//  Created by anel bakhtygereyeva on 26.09.2025.
//

import Foundation

func runWordFreqCount() {
    let sentence = "Hello hello hello world world"
    let words = sentence
        .lowercased()
        .components(separatedBy: CharacterSet.alphanumerics.inverted)
        .filter { !$0.isEmpty }
    
    var freq: [String: Int] = [:]
    for word in words {
        freq[word, default: 0] += 1
    }
    print(freq)
}
