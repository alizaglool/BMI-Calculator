//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userHeight: UILabel!
    @IBOutlet weak var userWeight: UILabel!
    @IBOutlet weak var hightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var calculatorBrain = CalculatorBrain()
    
    
    @IBAction func btnHightUser(_ sender: UISlider) {
        let hight = String(format: "%.2f", sender.value)
        userHeight.text = "\(hight)m"
    }
    @IBAction func btnWeightUser(_ sender: UISlider) {
        //userWeight.text = String(format: "%.0f", sender.value)
        let weight = String(Int(sender.value))
        userWeight.text = "\(weight)Kg"
    }
    
    @IBAction func calculatePressed(_ sender: Any) {
        let height = hightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height : height , weight : weight)
         self.performSegue(withIdentifier: "secondView", sender: self)
      
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondView" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.bmiCalculate = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getBMiAdvice()
            destinationVC.color = calculatorBrain.getBMiColor()
        }
    }
}

