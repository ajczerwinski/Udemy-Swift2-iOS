//
//  ViewController.swift
//  Segues Lecture
//
//  Created by Allen Czerwinski on 2/13/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func goToBlue(sender: AnyObject) {
        // use SENDER to pass data
        let str = "Hey, we just came from the Yellow Screen!"
        performSegueWithIdentifier("goToBlue", sender: str)
    }
    
    @IBAction func goToRed(sender: AnyObject) {
        performSegueWithIdentifier("goToRed", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        // This is where you do work right before the view loads,
        // keep in mind, the next view controller has already been initialized
        
        if segue.identifier == "goToBlue" {
            if let blueVC = segue.destinationViewController as? BlueViewController {
                if let theString = sender as? String {
                    blueVC.transferText = theString
                }
            }
        }
    }
    

}

