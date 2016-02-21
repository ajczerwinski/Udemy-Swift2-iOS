//
//  Pokemon.swift
//  Pokedex
//
//  Created by Allen Czerwinski on 2/20/16.
//  Copyright © 2016 Allen Czerwinski. All rights reserved.
//

import Foundation

class Pokemon {
    private var _name: String!
    private var _pokedexId: Int!
    
    var name: String {
        return _name
    }
    
    var pokedexId: Int {
        return _pokedexId
    }
    
    init(name: String, pokedexId: Int) {
        self._name = name
        self._pokedexId = pokedexId
        
    }
    
    
}