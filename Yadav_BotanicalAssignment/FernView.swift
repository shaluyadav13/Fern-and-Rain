//
//  FernView.swift
//  Yadav_BotanicalAssignment
//
//  Created by Yadav,Shalu on 3/30/16.
//  Copyright © 2016 Yadav,Shalu. All rights reserved.
//

import UIKit

class FernView: UIView {
    
    
    var fernMaker:FernMaker!
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        
        let colorSel:UIColor = UIColor.blueColor()
        let radius:Double = 1.0
        let bp:UIBezierPath = UIBezierPath()
        colorSel.setStroke()
        colorSel.setFill()
        for i:Int in 0.stride(to: fernMaker.points.count, by: 1){
            let xtransform:CGFloat = (fernMaker.points[i].x + 10)*25
            let ytransform:CGFloat = (fernMaker.points[i].y + 10)*30
            bp.moveToPoint(CGPoint(x: xtransform, y: ytransform))
            bp.addArcWithCenter(CGPoint(x: xtransform, y: ytransform), radius: CGFloat(radius), startAngle: 0.0, endAngle: 6.28, clockwise: true)
            bp.fill()
        }
    }
    
    
}
