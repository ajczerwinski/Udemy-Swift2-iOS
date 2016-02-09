//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Vehicle {
    private var engine = "4 cylinder"
    private var color = "Silver"
    private var _odometer = 500
    
    // GETTER / SETTER (Accessors & Mutators) to create a computed property
    
    var odometer: Int {
        get {
            return _odometer
        }
        set {
            if newValue > _odometer {
                _odometer = newValue
            }
        }
    }
    
    init(engine: String, color: String) {
        self.engine = engine
        self.color = color
    }
    
    init() {
        
    }
    
    func enterMiles(miles: Int) {
        odometer += miles
    }
}

var bmw = Vehicle()
bmw.odometer
// trying to set odometer to a value less than 500 gets ignored and the value stays at 500
bmw.odometer = 100
bmw.odometer
// setting odometer to value greater than 500 allows value to be overwritten
bmw.odometer = 700
print(bmw.odometer)
bmw.color
bmw.color = "Black"
bmw.color

