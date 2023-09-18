//
//  ViewController.swift
//  IsMyEggReady
//
//  Created by Nuhu Sulemana on 14/09/2023.
//

import UIKit

class ViewController: UIViewController {

    let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 12]
    
    var countDownTimer = Timer()
    var counter = 60 

    @IBAction func selectHardness(_ sender: UIButton) {
        
        let hardness = sender.titleLabel!.text!
        
        let result = eggTimes[hardness]!
        print(result)
        
        startTimer()
        print("startTimer()")
    }
    
    func startTimer() {
        countDownTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    @objc func updateCounter() {
        if self.counter > 0 {
            print("\(self.counter) seconds.")
            counter -= 1
        } else if self.counter == 0 {
            countDownTimer.invalidate()
        }
    }
}

