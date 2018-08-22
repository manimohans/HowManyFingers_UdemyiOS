//
//  ViewController.swift
//  HowManyFingers
//
//  Created by Mani on 8/16/18.
//  Copyright © 2018 Mani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fingersTextField: UITextField!
    @IBAction func guessButton(_ sender: Any) {
        let diceRoll = String(arc4random_uniform(6))
        if fingersTextField.text == diceRoll {
            resultLabel.text = "You're right!"
        } else {
            resultLabel.text = "Wrong! It was " + diceRoll + "."
        }
    }
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

