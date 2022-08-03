//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by A_Z on 7/6/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height : Float , weight : Float) {
       let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat More pies!", color: #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))
        }else if bmiValue < 24.5 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        }else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1))
        }
        
    }
    
    func getBMIValue() -> String{
        let bmiTo1DesmailNum  = String(format: "%.1f", bmi?.value ?? "0.0")
        return bmiTo1DesmailNum
    }
    func getBMiAdvice () -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getBMiColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}
