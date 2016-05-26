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

    }

}
