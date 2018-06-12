//
//  Card.swift
//  StanfordDemo
//
//  Created by 冯志浩 on 2018/6/12.
//  Copyright © 2018年 冯志浩. All rights reserved.
//

import Foundation
struct Card {
    var isFaceUp = false
    var isMatched = false
    var identifier = 0
    static var identifierFactory = 0
    static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
    
}
