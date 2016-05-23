//
//  ViewController.swift
//  BrainTeaser
//
//  Created by Allen Czerwinski on 5/16/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import UIKit
import pop

class LoginVC: UIViewController {

    @IBOutlet weak var emailConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var passwordConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var loginConstraint: NSLayoutConstraint!
    
    var animEngine: AnimationEngine!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.animEngine = AnimationEngine(constraints: [emailConstraint, passwordConstraint, loginConstraint])
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        self.animEngine.animateOnScreen(1)
        
    }


}

