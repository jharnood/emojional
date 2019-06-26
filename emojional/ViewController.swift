//
//  ViewController.swift
//  emojional
//
//  Created by Apple on 6/20/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let emojis = ["🥵": "hot face", "😁": "happy", "🥰": "Lovey dovey", "😱": "shoked", "🤪": "wild", "😴": "sleepy"]
    
    let customMessages = [
    "hot face": ["you got it boo", "take a deep breath", "take a break, sis", "you're doing great, sweetie!", "cool down with a nice sip of ice cold water."],
        
    "happy":["you're making the world a better place!", "keep doing what you're doing!", "you're killing it sis!", "keep smiling!", "good vibezzzz"],
    
    "Lovey dovey" : ["you're beautiful", "spread the love", "your beauty is contagious", "you're glowing, honey!", "awww you're so cute"],
    
    "shoked" : ["chill out", "take a chill pill", "omg what was it?", "that's amazing!!!", "so cool!"],
    
    "wild" : ["be wise", "remember to make smart decisions", "have fun!", "be safe", "everyone loves to be around you"],
    
    "sleepy" : ["take a nice power nap", "coffee was made for you", "wake up! its grind time!", "you deserve a break", "hitting the snooze is ok sometimes."]
    
    ]
    
    
    
    
    @IBAction func showMessage(sender: UIButton) {
        
        let selectedEmotion = sender.titleLabel?.text
       
        
        let number = Int.random(in: 0..<4)
        
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

