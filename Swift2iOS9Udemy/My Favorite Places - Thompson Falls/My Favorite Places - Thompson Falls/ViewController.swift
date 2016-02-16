//
//  ViewController.swift
//  My Favorite Places - Thompson Falls
//
//  Created by Allen Czerwinski on 2/15/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var aboutButtonUI: UIButton!
    
    @IBOutlet weak var photosButtonUI: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        aboutButtonUI.layer.cornerRadius = 4.0
        photosButtonUI.layer.cornerRadius = 4.0
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

