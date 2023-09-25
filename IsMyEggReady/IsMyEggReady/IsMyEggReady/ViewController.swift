//
//  ViewController.swift
//  IsMyEggReady
//
//  Created by Nuhu Sulemana on 14/09/2023.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressIndicator: UIProgressView!
    var player: AVAudioPlayer?
    
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
    
    var countDownTimer = Timer()
    var totalTime = 0
    var secondsElapsed = 0
    
    @IBAction func selectHardness(_ sender: UIButton) {
        // invalidate() stops the timer from ever firing again and requests its removal from run loop
        countDownTimer.invalidate()
        
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!
        
        progressIndicator.progress = 0.0
        secondsElapsed = 0
        titleLabel.text = hardness
        
        startTimer()
    }
    
    func startTimer() {
        countDownTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    @objc func updateCounter() {
        if secondsElapsed < totalTime {
            secondsElapsed += 1
            progressIndicator.progress = Float(secondsElapsed) / Float(totalTime)
        } else {
            countDownTimer.invalidate()
            titleLabel.text = "Your egg is Ready 😋!!"
            playSound()
        }
    }
    
    func playSound() {
        guard let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3") else {
            return
        }
        do {
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
            player!.play()
            } catch let error {
                print("error: \(error)")
            }
        }
    }


