//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Person {
    var eyeColor = "Blue"
    var name: String
    var speed = "10 MPH"
    var benchPress = "200 LBS"
    
    init(name: String) {
        self.name = name
    }
    
    func catchPhrase() -> String {
        return "Hi, I'm an average person"
    }
}

var jon = Person(name: "Jon")

class Animorph: Person {
    
    var animalType = "Dog"
    
    convenience init(type: String, name: String) {
        self.init(name: name)
        self.animalType = type
        self.speed = "25 MPH"
    }
    
    override func catchPhrase() -> String {
        return "I can turn into a cool animal!"
    }
}

print(jon.eyeColor)
print(jon.catchPhrase())


var dolphin = Animorph(type: "Dolphin", name: "Jack")

print(dolphin.eyeColor)
print(dolphin.catchPhrase())


class SuperHero: Person {
    var specialPower = "X-Ray Vision"
    var backStory = "Some truck hit some slime that had chemicals and now I'm super awesome"
    
    convenience init(name: String, press: String) {
        self.init(name: name)
        benchPress = press
    }
    
    override func catchPhrase() -> String {
        return "With great power do or do not to infinity and beyond"
    }
}

var pukeMan = SuperHero(name: "Puke Man", press: "5000 LBS")


print(pukeMan.catchPhrase())
print(dolphin.catchPhrase())
print(jon.catchPhrase())

// UIView -> UIImageView
// UIView -> UIButton
// UIView -> UILabel

