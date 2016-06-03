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
        return [rodman]
    }
}