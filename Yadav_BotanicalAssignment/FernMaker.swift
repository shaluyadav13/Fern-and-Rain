//
//  FernMaker.swift
//  Yadav_BotanicalAssignment
//
//  Created by Yadav,Shalu on 3/30/16.
//  Copyright © 2016 Yadav,Shalu. All rights reserved.
//

import Foundation
import UIKit

class FernMaker  {
    var points:[CGPoint] = []
    var funcArray:[String] = ["t0","t1","t2","t3"]
 
    
    func generateFern(numberOfPoints:Int){
//        
//        let colorSel:UIColor = UIColor.yellowColor()
//        let radius:Double = 0.5
//        let bp:UIBezierPath = UIBezierPath()
//        colorSel.setStroke()
//        colorSel.setFill()
        var point:CGPoint = t0()
        points.append(point)
        for _:Int in 1.stride(to: numberOfPoints, by: 1){
//            bp.moveToPoint(point)
//            bp.addArcWithCenter(point, radius: CGFloat(radius), startAngle: 0.0, endAngle: 6.28, clockwise: true)
//            bp.fill()
            let index:Int = random()%4
            if funcArray[index] == "t0" {
                point = t0()
                points.append(point)
            } else if funcArray[index] == "t1" {
                point = t1(point)
                points.append(point)
            } else if funcArray[index] == "t2" {
                point = t2(point)
                points.append(point)
            } else {
                point = t3(point)
                points.append(point)
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
