//
//  ViewController.swift
//  HideTheBombsButtons
//
//  Created by Allen Czerwinski on 2/3/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var blueBombOutlet: UIImageView!
    @IBOutlet weak var redBombOutlet: UIImageView!
    
    @IBOutlet weak var reArmOutlet: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reArmOutlet.hidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func hideBlueButton(sender: AnyObject) {
        blueBombOutlet.hidden = true
        reArmOutlet.hidden = false
    }
    @IBAction func hideRedButton(sender: AnyObject) {
        redBombOutlet.hidden = true
        reArmOutlet.hidden = false
    }
    
    @IBAction func reArmButton(sender: AnyObject) {
        blueBombOutlet.hidden = false
        redBombOutlet.hidden = false
        reArmOutlet.hidden = true
    }
    

}

