//
//  Player.swift
//  PlayerScoop
//
//  Created by Allen Czerwinski on 6/3/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import UIKit

struct Player {
    var name = ""
    var age = 0
    var college = ""
    var height = ""
    var image = UIImage()
    var backgroundColor = UIColor()
    var textColor1 = UIColor()
    var textColor2 = UIColor()
    
    static func createPlayers() -> [Player] {
        let rodman = Player(name: "Dennis Rodman", age: 55, college: "Southeastern Oklahoma State", height: "6' 7\"", image: UIImage(named: "rodman.jpg")!, backgroundColor: UIColor.redColor(), textColor1: UIColor.purpleColor(), textColor2: UIColor.whiteColor())
        
        let barkley = Player(name: "Charles Barkley", age: 53, college: "Auburn", height: "6' 6\"", image: UIImage(named: "barkley.jpg")!, backgroundColor: UIColor.blackColor(), textColor1: UIColor.blackColor(), textColor2: UIColor.blackColor())
        
        let curry = Player(name: "Steph Curry", age: 28, college: "Davidson", height: "6' 3\"", image: UIImage(named: "curry.jpg")!, backgroundColor: UIColor.blackColor(), textColor1: UIColor.blackColor(), textColor2: UIColor.blackColor()   )
        
        let nash = Player(name: "Steve Nash", age: 42, college: "Santa Clara", height: "6' 3\"", image: UIImage(named: "nash.jpg")!, backgroundColor: UIColor.blackColor(), textColor1: UIColor.blackColor(), textColor2: UIColor.blackColor())
        
        let laimbeer = Player(name: "Bill Laimbeer", age: 59, college: "Notre Dame", height: "6' 11\"", image: UIImage(named: "laimbeer.jpg")!, backgroundColor: UIColor.blackColor(), textColor1: UIColor.blackColor(), textColor2: UIColor.blackColor())
        
        let shaq = Player(name: "Shaquille O'Neil", age: 44, college: "Louisiana State University", height: "7' 1\"", image: UIImage(named: "shaq.jpg")!, backgroundColor: UIColor.blackColor(), textColor1: UIColor.blackColor(), textColor2: UIColor.blackColor())
        
        return [rodman, barkley, curry, nash, laimbeer, shaq]
    }
}