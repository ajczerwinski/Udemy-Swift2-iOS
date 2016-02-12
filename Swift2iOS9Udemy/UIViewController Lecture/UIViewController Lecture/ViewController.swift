//
//  ViewController.swift
//  UIViewController Lecture
//
//  Created by Allen Czerwinski on 2/12/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    // Only called ONCE when first loaded in memory
    override func viewDidLoad() {
        super.viewDidLoad()
        // refresh table
        view.backgroundColor = UIColor.greenColor()
    }

    // Called right before views appear on screen
    // Called EVERY time
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    
    // Put code that modifies view layout if viewwillappear doesn't work
    override func viewDidLayoutSubviews() {
        
    }

}

