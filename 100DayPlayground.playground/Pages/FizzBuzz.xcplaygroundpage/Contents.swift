//: [Previous](@previous)

import Foundation

var multiplesDictionary = ["Fizz": 0, "Buzz": 0, "FizzBuzz": 0, "other": 0];
for i in 1...100 {
    var multipleOf3 = i.isMultiple(of: 3)
    var multipleOf5 = i.isMultiple(of: 5)

    if multipleOf3 && multipleOf5 {
        multiplesDictionary["FizzBuzz"]! += 1
    } else if multipleOf3 {
        multiplesDictionary["Fizz"]! += 1
    } else if multipleOf5 {
        multiplesDictionary["Buzz"]! += 1
    } else {
        multiplesDictionary["other"]! += 1
    }
}

//: [Next](@next)
assert(multiplesDictionary["Fizz"] == 27)
assert(multiplesDictionary["Buzz"] == 14)
assert(multiplesDictionary["FizzBuzz"] == 6)
assert((100 - (multiplesDictionary["Fizz"]! + multiplesDictionary["Buzz"]! + multiplesDictionary["FizzBuzz"]!)) == multiplesDictionary["other"]!)
