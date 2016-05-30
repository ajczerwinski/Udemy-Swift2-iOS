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
    @IBOutlet weak var timerCounterLbl: UILabel!
    
    
    var currentCard: Card!
    var timer = NSTimer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentCard = createCardFromNib()
        currentCard.center = AnimationEngine.screenCenterPosition
        self.view.addSubview(currentCard)

    }
    
//    override func viewDidAppear(animated: Bool) {
//        AnimationEngine.animateToPosition(currentCard, position: CGPointMake(150, UIScreen.mainScreen().bounds.height))
//    }

    @IBAction func yesPressed(sender: UIButton) {
        
        timer.invalidate()
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: #selector(countDown), userInfo: nil, repeats: true)
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
    
    func countDown() {
        counter += 1
        timerCounterLbl.text = "\(counter)"
    }
    
    func showNextCard() {
        
        if let current = currentCard {
            let cardToRemove = current
            currentCard = nil
            
            AnimationEngine.animateToPosition(cardToRemove, position: AnimationEngine.offScreenLeftPosition, completion: { (anim: POPAnimation!, finished: Bool) -> Void in
                cardToRemove.removeFromSuperview()
            })
        }
        
        if let next = createCardFromNib() {
            next.center = AnimationEngine.offScreenRightPosition
            self.view.addSubview(next)
            currentCard = next
            
            if noBtn.hidden {
                noBtn.hidden = false
                yesBtn.setTitle("YES", forState: .Normal)
            }
            
            AnimationEngine.animateToPosition(next, position: AnimationEngine.screenCenterPosition, completion: { (anim: POPAnimation!, finished: Bool) -> Void in
                
            })
        }
        
    }
    
    func createCardFromNib() -> Card? {
        return NSBundle.mainBundle().loadNibNamed("Card", owner: self, options: nil)[0] as? Card
    }
    
    func checkAnswer() {
        
    }
    
}





