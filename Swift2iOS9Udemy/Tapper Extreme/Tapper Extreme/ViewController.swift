//
//  ViewController.swift
//  Tapper Extreme
//
//  Created by Allen Czerwinski on 2/4/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Properties
    
    var maxTaps = 0
    var currentTaps = 0
    
    
    
    
    // Outlets
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var howManyTapsText: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var tapLabel: UILabel!
    
    @IBAction func onCoinTapped(sender: UIButton) {
        currentTaps++
        updateTapsLabel()
        if isGameOver() {
            restartGame()
        }
    }

    @IBAction func onPlayButtonPressed(sender: UIButton!) {
        
        if howManyTapsText.text != nil && howManyTapsText.text != "" {
            
            logoImage.hidden = true
            howManyTapsText.hidden = true
            playButton.hidden = true
            
            tapButton.hidden = false
            tapLabel.hidden = false
            
            maxTaps = Int(howManyTapsText.text!)!
            currentTaps = 0
            
            updateTapsLabel()
            
        }
    }
    
    func restartGame() {
        maxTaps = 0
        howManyTapsText.text = ""
        logoImage.hidden = false
        howManyTapsText.hidden = false
        playButton.hidden = false
        
        tapLabel.hidden = true
        tapButton.hidden = true
    }
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        } else {
            return false
        }
    }
    
    func updateTapsLabel() {
        tapLabel.text = "\(currentTaps) Taps"
    }

}

