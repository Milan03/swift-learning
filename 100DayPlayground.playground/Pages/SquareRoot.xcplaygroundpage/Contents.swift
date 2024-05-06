//: [Previous](@previous)

import Foundation

enum MyError: Error {
    case runtimeError(String)
}

func squareRoot(num: Int) throws -> Int {
    if num < 1 || num > 10_000 {
        throw MyError.runtimeError("Out of bounds.")
    }
    
    for i in stride(from: 1, to: 10_000, by: 2) {
        if (i * i == num) {
            return i
        }
    }
    throw MyError.runtimeError("No root.")
}

//: [Next](@next)
// Positive case
assert((try? squareRoot(num: 9)) == 3, "The squre root calculation failed")
// Negative case
do {
    _ = try squareRoot(num: 5)
} catch MyError.runtimeError(let message) {
    print("Caught expected error: \(message)")
} catch {
    print("An unexpected error occured")
}
// Error case: Out of bounds lower
do {
    _ = try squareRoot(num: 0)
} catch MyError.runtimeError(let message) {
    print("Caught expected error: \(message)")
} catch {
    print("An unexpected error occured")
}
// Error case: Out of bounds upper
do {
    _ = try squareRoot(num: 10_001)
} catch MyError.runtimeError(let message) {
    print("Caught expected error: \(message)")
} catch {
    print("An unexpected error occured")
}
