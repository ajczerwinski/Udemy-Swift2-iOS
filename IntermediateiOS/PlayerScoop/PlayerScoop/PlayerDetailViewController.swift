//
//  PlayerDetailViewController.swift
//  PlayerScoop
//
//  Created by Allen Czerwinski on 6/5/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import UIKit

class PlayerDetailViewController: UIViewController {
    
    var player = Player()
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var heightLabel1: UILabel!
    @IBOutlet weak var heightLabel2: UILabel!
    @IBOutlet weak var weightLabel1: UILabel!
    @IBOutlet weak var weightLabel2: UILabel!
    @IBOutlet weak var collegeLabel1: UILabel!
    @IBOutlet weak var collegeLabel2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = self.player.backgroundColor
        self.imageView.image = self.player.image
        self.heightLabel2.text = self.player.height
        self.weightLabel2.text = String(self.player.weight)
        self.nameLabel.text = self.player.name
        self.collegeLabel2.text = self.player.college
        
        self.nameLabel.textColor = self.player.textColor1
        
        self.heightLabel1.textColor = self.player.textColor1
        self.heightLabel2.textColor = self.player.textColor2
        
        self.weightLabel1.textColor = self.player.textColor1
        self.weightLabel2.textColor = self.player.textColor2
        
        self.collegeLabel1.textColor = self.player.textColor1
        self.collegeLabel2.textColor = self.player.textColor2
        
        
    }

}
