//
//  ViewController.swift
//  DiceRoll
//
//  Created by Romeo Enso on 29/11/2017.
//  Copyright © 2017 Romeo Enso. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex: Int = 0
    var randomDiceIndex2: Int = 0
    
    var diceArr = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImages()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
        
    }
    
    func updateDiceImages() {
        
        randomDiceIndex = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: diceArr[randomDiceIndex])
        diceImageView2.image = UIImage(named: diceArr[randomDiceIndex2])

    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
}

