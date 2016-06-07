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
    var weight = 0
    var image = UIImage()
    var backgroundColor = UIColor()
    var textColor1 = UIColor()
    var textColor2 = UIColor()
    
    static func createPlayers() -> [Player] {
        let rodman = Player(name: "Dennis Rodman", age: 55, college: "Southeastern Oklahoma State", height: "6' 7\"", weight: 220, image: UIImage(named: "rodman.jpg")!, backgroundColor: UIColor(red: 0.180, green: 0.122, blue: 0.247, alpha: 1.00), textColor1: UIColor(red: 0.055, green: 0.027, blue: 0.078, alpha: 1.00) , textColor2: UIColor(red: 0.651, green: 0.035, blue: 0.071, alpha: 1.00))
        
        let barkley = Player(name: "Charles Barkley", age: 53, college: "Auburn", height: "6' 6\"", weight: 252, image: UIImage(named: "barkley.jpg")!, backgroundColor: UIColor(red: 0.702, green: 0.008, blue: 0.039, alpha: 1.00), textColor1: UIColor.whiteColor(), textColor2: UIColor(red: 0.000, green: 0.153, blue: 0.596, alpha: 1.00))
        
        let curry = Player(name: "Steph Curry", age: 28, college: "Davidson", height: "6' 3\"", weight: 190, image: UIImage(named: "curry.jpg")!, backgroundColor: UIColor(red: 0.906, green: 0.604, blue: 0.090, alpha: 1.00), textColor1: UIColor(red: 0.102, green: 0.231, blue: 0.675, alpha: 1.00), textColor2: UIColor.whiteColor())
        
        let nash = Player(name: "Steve Nash", age: 42, college: "Santa Clara", height: "6' 3\"", weight: 180, image: UIImage(named: "nash.jpg")!, backgroundColor: UIColor(red: 0.110, green: 0.122, blue: 0.196, alpha: 1.00), textColor1: UIColor(red: 0.082, green: 0.243, blue: 0.565, alpha: 1.00), textColor2: UIColor.whiteColor())
        
        let laimbeer = Player(name: "Bill Laimbeer", age: 59, college: "Notre Dame", height: "6' 11\"", weight: 245, image: UIImage(named: "laimbeer.jpg")!, backgroundColor: UIColor(red: 0.043, green: 0.137, blue: 0.427, alpha: 1.00), textColor1: UIColor(red: 0.345, green: 0.008, blue: 0.004, alpha: 1.00), textColor2: UIColor.whiteColor())
        
        let shaq = Player(name: "Shaquille O'Neil", age: 44, college: "Louisiana State University", height: "7' 1\"", weight: 325, image: UIImage(named: "shaq.jpg")!, backgroundColor: UIColor(red: 0.784, green: 0.584, blue: 0.000, alpha: 1.00), textColor1: UIColor(red: 0.196, green: 0.145, blue: 0.345, alpha: 1.00), textColor2: UIColor.whiteColor())
        
        return [rodman, barkley, curry, nash, laimbeer, shaq]
    }
}