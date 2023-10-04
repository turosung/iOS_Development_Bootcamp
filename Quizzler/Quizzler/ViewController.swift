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
    
    let quiz = [
        ["Four + Two is equal to Six.", "True"],
        ["Five - Three is greater than One.", "True"],
        ["Three + Eight is less than Ten", "False"]
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber][1]
        
        if userAnswer == actualAnswer {
            print("That's Correct!")
        } else {
            print("That's Wrong !")
        }
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }

        updateUI()
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNumber][0]
    }
    

}

