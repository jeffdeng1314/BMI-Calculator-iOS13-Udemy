//
//  calculatorBrain.swift
//  BMI Calculator
//
//  Created by Jeff Deng on 11/19/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBmi(weight: Float, height: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: UIColor(named: "blue_color")!)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as fiddle!", color: UIColor(named: "green_color")!)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: UIColor(named: "red_color")!)
        }
        
    }
    
    func getBmi() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .systemBackground
    }
}
