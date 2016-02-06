//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func isEven(param: Int) -> Bool {
    if(param % 2 == 0) {
        print(true)
        return true
    } else {
        print(false)
        return false
    }
}

isEven(4)
isEven(7)


