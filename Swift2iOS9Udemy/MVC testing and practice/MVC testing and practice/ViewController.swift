//
//  ViewController.swift
//  MVC testing and practice
//
//  Created by Allen Czerwinski on 2/12/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var renameField: UITextField!
    
    @IBOutlet weak var fullName: UILabel!
    let person = Person(first: "John", last: "Hancock")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullName.text = person.fullName
        
    }

    @IBAction func buttonPressed(sender: AnyObject) {
        
        if let txt = renameField.text {
            person.firstName = txt
            fullName.text = person.fullName
        }
        
    }

}

