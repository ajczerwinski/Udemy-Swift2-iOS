//
//  ViewController.swift
//  Multiples
//
//  Created by Allen Czerwinski on 2/5/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var maxNum = 101
    var runningSum = 0
    var multiple = 0
    var previousSum = 0
    
    @IBOutlet weak var multiplesOutlet: UIImageView!
    @IBOutlet weak var multiplesTextOutlet: UILabel!
    @IBOutlet weak var textFieldOutlet: UITextField!
    @IBOutlet weak var playButtonUI: UIButton!
    @IBOutlet weak var addButtonUI: UIButton!
    
    
    
    

    override func viewDidLoad() {
        self.textFieldOutlet.delegate = self
        super.viewDidLoad()
        restartGame()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func addButton(sender: UIButton) {
        if runningSum <= maxNum {
            runningSum += multiple
            previousSum = runningSum - multiple
            multiplesTextOutlet.text = "\(previousSum) + \(multiple) = \(runningSum)"
        } else {
            restartGame()
        }
    }
    
    @IBAction func playButton(sender: UIButton) {
        if textFieldOutlet.text != nil && textFieldOutlet.text != "" {
            
            multiplesTextOutlet.text = "Press Add to add!"
            
            multiplesOutlet.hidden = true
            playButtonUI.hidden = true
            textFieldOutlet.hidden = true
            
            multiplesTextOutlet.hidden = false
            addButtonUI.hidden = false
            
            multiple = Int(textFieldOutlet.text!)!
            
            
            
        }
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    func restartGame() {
        
        runningSum = 0
        multiple = 0
        previousSum = 0
        
        textFieldOutlet.text = ""
        multiplesOutlet.hidden = false
        playButtonUI.hidden = false
        textFieldOutlet.hidden = false
        
        addButtonUI.hidden = true
        multiplesTextOutlet.hidden = true
    }
    
}

