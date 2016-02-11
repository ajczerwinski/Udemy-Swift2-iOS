//
//  Player.swift
//  RPG OOP Game Assignment
//
//  Created by Allen Czerwinski on 2/10/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import Foundation

class Player: Character {
    private var _name = "Player"
    
    var name: String {
        get {
            return _name
        }
    }
    
    convenience init(name: String, hp: Int, attackPwr: Int) {
        self.init(startingHp: hp, attackPwr: attackPwr)
        
        _name = name
    }
    
}