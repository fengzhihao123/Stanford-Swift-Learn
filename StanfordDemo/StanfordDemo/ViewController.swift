//
//  ViewController.swift
//  StanfordDemo
//
//  Created by 冯志浩 on 2018/6/7.
//  Copyright © 2018年 冯志浩. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    lazy var game: Concentration = Concentration(numberOfPairsOfCards: cardButtons.count/2)
    
    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "flipCount:\(flipCount)"
        }
    }
    
    @IBOutlet var cardButtons: [UIButton]!
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        let cardNumber = cardButtons.index(of: sender)
        if let num = cardNumber {
            game.chooseCard(at: num)
            updateViewFromModel()
        }
    }
    
    func updateViewFromModel() -> Void {
        for index in cardButtons.indices {
            let button = cardButtons[index]
            let card = game.cards[index]
            if card.isFaceUp {
                button.setTitle(emoji(for: card), for: .normal)
                button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            } else {
                button.setTitle("", for: .normal)
                button.backgroundColor = card.isMatched ? UIColor.clear : UIColor.orange
            }
        }
    }
    
    var emojiChoices = ["👻","😽","🎃","✋🏽","💩"]
    var emoji = [Int: String]()
    
    func emoji(for card: Card) -> String {
        if emoji[card.identifier] == nil, emojiChoices.count > 0 {
            let randomIndex = Int(arc4random_uniform(UInt32(emojiChoices.count)))
            emoji[randomIndex] = emojiChoices.remove(at: randomIndex)
        }
        let chooseEmoji = emoji[card.identifier]
        return chooseEmoji ?? ""
    }
}

