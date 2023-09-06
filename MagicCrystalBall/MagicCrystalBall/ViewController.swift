//
//  ViewController.swift
//  MagicCrystalBall
//
//  Created by Nuhu Sulemana on 04/09/2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ballImageView: UIImageView!

    let ballArray = [#imageLiteral(resourceName: "ball4"), #imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball4"), #imageLiteral(resourceName: "ball1"), #imageLiteral(resourceName: "ball5")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func askButtonTapped(_ sender: UIButton) {
        
        ballImageView.image = ballArray[Int.random(in: 0...4)]
        
        print("Ask tapped")
    }
    
}

