//
//  ViewController.swift
//  DiceDiceBaby
//
//  Created by Nuhu Sulemana on 31/08/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageOne: UIImageView!
    @IBOutlet weak var diceImageTwo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func rollDiceButton(_ sender: UIButton) {
        
        // To create image literal in Xcode type - #imageLiteral()
        // To create color literal in Xcode type - #colorLiteral()
        var diceArray = [#imageLiteral(resourceName: "Dice1"), #imageLiteral(resourceName: "Dice2"), #imageLiteral(resourceName: "Dice3"), #imageLiteral(resourceName: "Dice4"), #imageLiteral(resourceName: "Dice5"), #imageLiteral(resourceName: "Dice6")]
        
        diceImageOne.image = diceArray[Int.random(in: 0...5)]
        diceImageTwo.image = diceArray[Int.random(in: 0...5)]
        
    }
}

