//
//  GradeCalculator.swift
//  Assignment2
//
//  Created by anel bakhtygereyeva on 27.09.2025.
//

func runGradeCalculator() {
    let students = ["Adina":85, "Shugyla":80, "Ayazhan":70, "Diana":60]
    let scores = Array(students.values)
    let average = Double(scores.reduce(0, +)) / Double(scores.count)
    let maxScore = scores.max() ?? 0
    let minScore = scores.min() ?? 0
    
    print("Average score is: \(average)", "Highest score is: \(maxScore)", "Lowest score is: \(minScore)")
    for (name, score) in students {
        let status = score >= Int(average) ? "Above average" : "Below average"
        print("\(name): \(score) (\(status))")
    }
}
