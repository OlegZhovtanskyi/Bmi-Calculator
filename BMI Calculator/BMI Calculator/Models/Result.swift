//
//  Result.swift
//  BMI Calculator
//
//  Created by Oleg Zhovtanskyi on 06/06/2023.
//

import UIKit


struct CalculatorBrain {
    
    var bmi: Bmi?
    
    mutating func calculateBmi(height: Float, weight: Float) {
        let bmiValue = weight / (powf(height, 2))
        switch bmiValue {
        case 0...18.4:
            bmi = Bmi(value: bmiValue, advice: "Eat more pies!", color: .blue)
        case 18.5...24.9:
            bmi = Bmi(value: bmiValue, advice: "Fit as a fiddle!", color: .green)
        case 24.9...300:
            bmi = Bmi(value: bmiValue, advice: "Eat less pies!", color: .red)
        default:
            bmi = Bmi(value: bmiValue, advice: "Error", color: .black)
        }
    }
    
    func getBmiValue() -> String {
        String(format: "%.1f", bmi?.value ?? 0)
    }
    
    func getAdvice() -> String {
        bmi?.advice ?? " "
    }
    
    func getColor() -> UIColor {
        bmi?.color ?? .black
    }

}
