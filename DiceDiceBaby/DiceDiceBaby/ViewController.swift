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
    
    var leftDiceImage = 1
    var rightDiceImage = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func rollDiceButton(_ sender: UIButton) {
        
        print(leftDiceImage)
        
        diceImageOne.image = [#imageLiteral(resourceName: "Dice1"), #imageLiteral(resourceName: "Dice2"), #imageLiteral(resourceName: "Dice3"), #imageLiteral(resourceName: "Dice4"), #imageLiteral(resourceName: "Dice5"), #imageLiteral(resourceName: "Dice6")][leftDiceImage]
        diceImageTwo.image = [#imageLiteral(resourceName: "Dice1"), #imageLiteral(resourceName: "Dice2"), #imageLiteral(resourceName: "Dice3"), #imageLiteral(resourceName: "Dice4"), #imageLiteral(resourceName: "Dice5"), #imageLiteral(resourceName: "Dice6")][rightDiceImage]
        
        leftDiceImage += 1
        rightDiceImage += 1
        
        print(leftDiceImage)
    }
}

