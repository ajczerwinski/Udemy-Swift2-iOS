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
        self.nameLabel.text = self.player.name
    }

}
