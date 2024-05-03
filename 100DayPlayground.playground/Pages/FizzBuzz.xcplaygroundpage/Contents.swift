//: [Previous](@previous)

import Foundation

var multiplesDictionary = ["multipleOf3": 0, "multipleOf5": 0, "multipleOfBoth": 0];
for i in 1...100 {
    var multipleOf3 = i.isMultiple(of: 3) ? true : false
    var multipleOf5 = i.isMultiple(of: 5) ? true : false

    if multipleOf3 && multipleOf5 {
        print("FizzBuzz")
    } else if !multipleOf3 && !multipleOf5 {
        print(i)
    } else if !multipleOf3 && multipleOf5 {
        print("Buzz")
    } else {
        print("Fizz")
    }
}

//: [Next](@next)

