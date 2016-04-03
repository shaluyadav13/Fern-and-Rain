//
//  FirstViewController.swift
//  Yadav_BotanicalAssignment
//
//  Created by Yadav,Shalu on 3/30/16.
//  Copyright © 2016 Yadav,Shalu. All rights reserved.
//

import UIKit

class RainViewController: UIViewController {
    
    var color:UIColor!
    var radius:Double!
    var numberOfRaindrops:Int!
    
    @IBOutlet weak var rainView: RainView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        rainView.rainVC = self
     
    }
    
    override func viewWillAppear(animated: Bool) {
        rainView.setNeedsDisplay()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if let settingVC:SettingsViewController = segue.destinationViewController as? SettingsViewController
        {
            settingVC.rainVC = self
        }
        
        
    }
    
}

