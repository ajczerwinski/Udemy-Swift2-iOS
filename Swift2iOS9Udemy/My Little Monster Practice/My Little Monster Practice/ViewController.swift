//
//  ViewController.swift
//  My Little Monster Practice
//
//  Created by Allen Czerwinski on 2/10/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var monsterImg: UIImageView!
    @IBOutlet weak var foodImg: DragImg!
    @IBOutlet weak var heartImg: DragImg!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var imgArray = [UIImage]()
        for var x = 1; x <= 4; x++ {
            let img = UIImage(named: "idle\(x).png")
            imgArray.append(img!)
        }
        
        monsterImg.animationImages = imgArray
        monsterImg.animationDuration = 0.8
        monsterImg.animationRepeatCount = 0
        monsterImg.startAnimating()
        
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("I am touching the touch screen")
    }

}

