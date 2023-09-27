//
//  ViewController.swift
//  Quizzler
//
//  Created by Nuhu Sulemana on 26/09/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        questionLabel.text = "Four + Two is equal to Six"
    }
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
    }
    

}

