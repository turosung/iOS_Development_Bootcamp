//
//  ViewController.swift
//  BMI_Calculator
//
//  Created by Nuhu Sulemana on 21/10/2023.
//  Copyright © 2023 SwiftingWithTurosung. All rights reserved.

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSlideChanged(_ sender: UISlider) {
        let height = (String(format: "%.2f", sender.value))
        heightLabel.text = "\(height) m"
    }
    
    @IBAction func weightSlideChanged(_ sender: UISlider) {
        let weight = (String(format: "%.2f", sender.value))
        weightLabel.text = "\(weight) Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)

        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
    
} 

