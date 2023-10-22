//
//  ViewController.swift
//  BMI_Calculator
//
//  Created by Nuhu Sulemana on 21/10/2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
      
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
  
}

