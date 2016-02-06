//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var oddNumbers = [Int]()

for var x = 0; x < 100; x++ {
    if x % 2 == 1 {
        oddNumbers.append(x)
    }
}

var sums = [Int]()

for number in oddNumbers {
    sums.append(number + 5)
}

print(oddNumbers)

print(sums)

var y = 0
repeat {
    var phrase = "The sum is \(sums[y])"
    print(phrase)
    y++
} while y < sums.count