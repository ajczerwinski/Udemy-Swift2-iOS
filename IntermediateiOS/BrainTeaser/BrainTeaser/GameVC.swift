//
//  GameVC.swift
//  BrainTeaser
//
//  Created by Allen Czerwinski on 5/23/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import UIKit
import pop

class GameVC: UIViewController {

    @IBOutlet weak var yesBtn: CustomButton!
    @IBOutlet weak var noBtn: CustomButton!
    @IBOutlet weak var titleLbl: UILabel!
    
    var currentCard: Card!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentCard = NSBundle.mainBundle().loadNibNamed("Card", owner: self, options: nil)[0] as? Card
        currentCard.center = AnimationEngine.screenCenterPosition
        self.view.addSubview(currentCard)
        AnimationEngine.animateToPosition(currentCard, position: CGPointMake(0, UIScreen.mainScreen().bounds.height))

    }

    @IBAction func yesPressed(sender: UIButton) {
        if sender.titleLabel?.text == "YES" {
            checkAnswer()
        } else {
            titleLbl.text = "Does this card match the previous?"
        }
        
        showNextCard()
        
    }
    
    @IBAction func noPressed(sender: AnyObject) {
        checkAnswer()
        showNextCard()
    }
    
    func checkAnswer() {
        
    }
    
    func showNextCard() {
        
        if let current = currentCard {
            let cardToRemove = current
            currentCard = nil
        }
        
    }
    
}





