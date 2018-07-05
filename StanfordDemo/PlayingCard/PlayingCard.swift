//
//  PlayingCard.swift
//  PlayingCard
//
//  Created by 冯志浩 on 2018/7/3.
//  Copyright © 2018年 冯志浩. All rights reserved.
//

import UIKit

class PlayingCard: UIView {
    override func draw(_ rect: CGRect) {
        let roundRect = UIBezierPath(roundedRect: bounds, cornerRadius: 16.0)
        roundRect.addClip()
        UIColor.white.setFill()
        roundRect.fill()
        
//        let path = UIBezierPath()
//        path.addArc(withCenter: CGPoint(x: bounds.midX, y: bounds.midY), radius: 100.0, startAngle: 0, endAngle: 2*CGFloat.pi, clockwise: true)
//        path.lineWidth = 5
//        UIColor.green.setFill()
//        UIColor.red.setStroke()
//        path.stroke()
//        path.fill()
    }
}
