//
//  ViewController.swift
//  emojional
//
//  Created by Apple on 6/20/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let emojis = ["🥵": "hot face", "😁": "happy"]
    
    
    let customMessages = [
    "hot face": ["you got it boo", "take a deep breathe", "take a break, sis", "you're doing great, sweetie!"],
        
    "happy":["you're making the world a better place!", "keep doing what you're doing!", "you're killing it sis!"]
    
    ]
    
    
    
    
    @IBAction func showMessage(sender: UIButton) {
        
        let selectedEmotion = sender.titleLabel?.text
        
        let number = Int.random(in: 0...3)
        
        // in as much detail as possible
        // pseudo-code the things that need to happen
        // when a user clicks an emoji button
        
        let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[number]
        
        let alertController = UIAlertController(title: emojis[selectedEmotion!], message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        
    alertController.addAction(UIAlertAction(title: "okay", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

