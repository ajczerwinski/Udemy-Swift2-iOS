//
//  ViewController.swift
//  Enums Lecture
//
//  Created by Allen Czerwinski on 2/15/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var theLabel: UILabel!
    
    
    enum Cars: Int {
        case BMW = 0
        case HONDA = 1
        case TESLA = 2
        case SUBARU = 3
    }
    
    var carOfChoice: Cars!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var car1 = Cars.BMW
        var car2 = Cars.SUBARU
        
        if car1.rawValue == car2.rawValue {
            
        }
        
        if car1 == car2 {
            
        }
        
        carOfChoice = Cars.TESLA
        print(carOfChoice)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onButtonClicked(sender: UIButton!) {
        
        if sender.tag == Cars.BMW.rawValue {
            theLabel.text = "BMW is awesome!"
        } else if sender.tag == Cars.HONDA.rawValue {
                theLabel.text = "Hondas are even awesome'er!"
        } else if sender.tag == Cars.TESLA.rawValue {
                theLabel.text = "I like Teslas also"
        } else { sender.tag == Cars.SUBARU.rawValue
                theLabel.text = "Subarus are kewl too"
            }
        }
}

