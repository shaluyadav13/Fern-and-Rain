//
//  SettingsViewController.swift
//  Yadav_BotanicalAssignment
//
//  Created by Yadav,Shalu on 3/30/16.
//  Copyright © 2016 Yadav,Shalu. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    var colorSelected:String!
    var rainVC:RainViewController!
    var colorDict:[String:UIColor] = ["Red":UIColor.redColor(), "Orange":UIColor.orangeColor(), "Yellow":UIColor.yellowColor(), "Green":UIColor.greenColor(), "Violet":UIColor.purpleColor(), "Blue":UIColor.blueColor()]
    
    @IBOutlet weak var numRainDropsTF: UITextField!
    @IBOutlet weak var radiusRainDrop: UISlider!
    @IBOutlet weak var selectColorSC: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func selectedColor(sender: UISegmentedControl) {
        let indexColor:Int = selectColorSC.selectedSegmentIndex
        colorSelected = selectColorSC.titleForSegmentAtIndex(indexColor)
    }
    
    @IBAction func done(sender: UIBarButtonItem) {
        if numRainDropsTF.text != ""{
            rainVC.numberOfRaindrops = Int(numRainDropsTF.text!)
        } else {
            rainVC.numberOfRaindrops = 0
        }
        
        rainVC.radius = Double(radiusRainDrop.value)
        rainVC.color = colorDict[colorSelected]
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
