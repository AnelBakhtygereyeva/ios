//
//  fibbSequence.swift
//  Assignment2
//
//  Created by anel bakhtygereyeva on 26.09.2025.
//

func fibonacci(_ n: Int) -> [Int] {
    if n <= 0 {return []}
    if n == 1 {return [0]}
    var sequence = [0,1]
    while sequence.count < n {
        let next = sequence[sequence.count - 1] + sequence[sequence.count - 2]
        sequence.append(next)
    }
    return sequence
}

func runFibbSequence() {
    print(fibonacci(10))
}
