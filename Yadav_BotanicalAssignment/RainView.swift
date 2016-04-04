//
//  RainView.swift
//  Yadav_BotanicalAssignment
//
//  Created by Yadav,Shalu on 3/30/16.
//  Copyright © 2016 Yadav,Shalu. All rights reserved.
//

import UIKit



class RainView: UIView {
    
    
    var rainVC:RainViewController!
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        super.drawRect(rect)
        var colorSel:UIColor = UIColor.greenColor()
        var numRainDrop:Int = 1000
        var radius:Double = 1.0
        let bp:UIBezierPath = UIBezierPath()
        if let _ = rainVC.color {
            colorSel = rainVC.color
            print(rainVC.color)
        }
        
        if let _ = rainVC.numberOfRaindrops {
            numRainDrop = rainVC.numberOfRaindrops
            print(rainVC.numberOfRaindrops)
        }
        
        if let _ = rainVC.radius {
            radius = rainVC.radius
            print(rainVC.radius)
        }
        
        
        colorSel.setStroke()
        colorSel.setFill()
        var point:CGPoint = t0()
        for _:Int in 1.stride(to: numRainDrop, by: 1){
            bp.moveToPoint(point)
            bp.addArcWithCenter(point, radius: CGFloat(radius), startAngle: 0.0, endAngle: 6.28, clockwise: true)
            bp.fill()
            point = t0()
            
        }
        
    }
    
    func t0()->CGPoint{
        return CGPoint(x: random()%1500, y: random()%1500)
    }
    
}
