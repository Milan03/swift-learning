//: [Previous](@previous)

import Cocoa

let strArray = ["test", "test", "word", "another"];
print("Array count: \(strArray.count)")
assert(strArray.count == 4, "Array should have 4 elements")

let strSet = Set(strArray)
print("Set count: \(strSet.count)")
assert(strSet.count == 3)

//: [Next](@next)
