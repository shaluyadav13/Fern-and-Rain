//
//  SecondViewController.swift
//  Yadav_BotanicalAssignment
//
//  Created by Yadav,Shalu on 3/30/16.
//  Copyright © 2016 Yadav,Shalu. All rights reserved.
//

import UIKit

class FernViewController: UIViewController {

    @IBOutlet weak var fernView: FernView!
    var fernMaker:FernMaker!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        fernMaker = FernMaker()
        fernView.fernMaker = fernMaker
        fernMaker.generateFern(1000)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

