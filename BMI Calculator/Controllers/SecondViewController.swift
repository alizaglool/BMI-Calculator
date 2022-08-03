//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by A_Z on 7/6/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var bmiCalculate: String?
    var advice : String?
    var color : UIColor?
    
    @IBOutlet weak var resultLable: UILabel!
    @IBOutlet weak var adviceLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLable.text = bmiCalculate
        adviceLable.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func reCalculatePressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
