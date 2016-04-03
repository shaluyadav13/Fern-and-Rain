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
    
    var funcArray:[String] = ["t0","t1","t2","t3"]
 
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        super.drawRect(rect)
        var colorSel:UIColor = UIColor.yellowColor()
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
            let index:Int = random()%4
            if funcArray[index] == "t0" {
                point = t0()
            } else if funcArray[index] == "t1" {
                point = t1(point)
            } else if funcArray[index] == "t2" {
                point = t2(point)
            } else {
                point = t3(point)
            }
        }
        
    }

    func t0()->CGPoint{
        return CGPoint(x: random()%1000, y: random()%1000)
    }

    func t1(point:CGPoint)->CGPoint{
        return CGPoint(x: 0.85*point.x + 0.04*point.y, y: -0.04*point.x + 0.85*point.y + 1.6)
    }
    
    func t2(point:CGPoint)->CGPoint{
        return CGPoint(x: 0.2*point.x - 0.26*point.y,y: 0.23*point.x + 0.22*point.y + 1.6)
    }
    
    func t3(point:CGPoint)->CGPoint{
        return CGPoint(x: -0.15*point.x + 0.28*point.y, y: 0.26*point.x + 0.24*point.y + 0.44)
    }
}
