//
//  ViewController.swift
//  Great Number Game
//
//  Created by Steven Hajar on 10/1/19.
//  Copyright © 2019 Steven Hajar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var guessBox: UITextField!
    var correctAnswer: Int = Int.random(in: 1..<100)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func createAlert(title: String, message: String, title2: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: title2, style: UIAlertAction.Style.default, handler: { _ in
            //Cancel Action
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func onSubmit(_ sender: UIButton) {
        
        if let guess = Int(self.guessBox.text!) {
                if guess < self.correctAnswer {
                    self.createAlert(title: "Too Low!", message: "Glass half empty...", title2: "Guess Again")
                    
                } else if guess > self.correctAnswer {
                    self.createAlert(title: "Too High!", message: "Glass half full...", title2: "Guess Again")
                } else {
                    self.createAlert(title: "Perfection", message: "Your guess glass is just right!", title2: "Play again")
                    self.correctAnswer = Int.random(in: 1..<100)
                }
            
        }
        
    }
    

}

