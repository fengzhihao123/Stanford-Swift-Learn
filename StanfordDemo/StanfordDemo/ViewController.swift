//
//  ViewController.swift
//  StanfordDemo
//
//  Created by 冯志浩 on 2018/6/7.
//  Copyright © 2018年 冯志浩. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "flipCount:\(flipCount)"
        }
    }
    
    @IBOutlet var cardButtons: [UIButton]!
    @IBOutlet weak var flipCountLabel: UILabel!
    var emojiChoices = ["🎃","👻","🎃","👻"]
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        let cardNumber = cardButtons.index(of: sender)
        if let num = cardNumber {
            flipCard(withEmoji: emojiChoices[num], on: sender)
            print("cardNumber is \(num)")
        }
    }
    
    
    func flipCard(withEmoji emoji: String, on button: UIButton) -> Void {
        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
}

