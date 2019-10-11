//
//  ViewController.swift
//  Cold Call
//
//  Created by Steven Hajar on 10/1/19.
//  Copyright © 2019 Steven Hajar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var coldCallButton: UIButton!
    @IBOutlet weak var numberLabel: UILabel!
    
    let nameBank = [
        ("John"),
        ("Jacob"),
        ("Jingle"),
        ("Hiemer"),
        ("Schmidt"),
        ("Keith"),
        ]
    
    var currentName = 0
    var currentNumber = 0
    
    @IBAction func coldCallButtonPressed(_ sender: UIButton) {
        print("Cold Call button pressed")
        //change currentName value to random int
        self.currentName = Int.random(in: 0..<6)
        self.currentNumber = Int.random(in: 1..<6)
        updateUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    
    func updateUI() {
        //reset nameLabel to nameBank at currentName
        self.numberLabel.text = String(self.currentNumber)
        if self.currentNumber < 3 {
            self.numberLabel.textColor = UIColor.red        } else if self.currentNumber < 5 {
            self.numberLabel.textColor = UIColor.orange
        } else {
            self.numberLabel.textColor = UIColor.green
        }
        self.nameLabel.text = self.nameBank[currentName]
    }

}

