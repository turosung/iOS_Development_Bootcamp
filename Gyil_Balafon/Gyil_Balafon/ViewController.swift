//
//  ViewController.swift
//  Gyil_Balafon
//
//  Created by Nuhu Sulemana on 10/09/2023.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(soundName: sender.titleLabel!.text! )
        UIView.animate(withDuration: 0.2) {
            sender.alpha = 0.5
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            UIView.animate(withDuration: 0.2) {
                sender.alpha = 1
            }
        }
        
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!, fileTypeHint: AVFileType.wav.rawValue)
        player?.play()
    }
}

