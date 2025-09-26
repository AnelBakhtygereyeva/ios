//
//  TempConverter.swift
//  Assignment2
//
//  Created by anel bakhtygereyeva on 26.09.2025.
//

func celsToFahr(_ celsius: Double) -> Double {
    (celsius * 9.0 / 5.0) + 32.0
}

func celsToKelvin(_ celsius: Double) -> Double {
    celsius + 273.15
}

func fahrToCels(_ fahrenheit: Double) -> Double {
    (fahrenheit - 32.0) * 5.0 / 9.0
}

func fahrToKelvin(_ fahrenheit: Double) -> Double {
    (fahrenheit - 32) * 5/9 + 273.15
}

func kelvinToCels(_ kelvin: Double) -> Double {
    kelvin - 273.15
}

func kelvinToFahr(_ kelvin: Double) -> Double {
    kelvin * 9.0 / 5.0 - 459.67
}

func runTempConverter() {
    let value = 100.0
    let unit = "C"
    
    if unit == "C" {
        print("F: \(celsToFahr(value))", "K: \(celsToKelvin(value))")
    } else if unit == "F" {
        print("C: \(fahrToCels(value))", "K: \(fahrToKelvin(value))")
    } else if unit == "K" {
        print("C: \(kelvinToCels(value))", "F: \(kelvinToFahr(value))")
    } else {
        print("Invalid unit!")
    }
}


