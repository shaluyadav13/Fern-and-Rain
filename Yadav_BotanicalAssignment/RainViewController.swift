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
    
    required init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)!
    }
    
    override init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: NSBundle!) {
        rainView = RainView()
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    convenience init() {
        self.init(nibName: nil, bundle: nil)
        self.color = UIColor.yellowColor()
        self.radius = 0.5
        self.numberOfRaindrops = 100
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        rainView.rainVC = self
     
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

