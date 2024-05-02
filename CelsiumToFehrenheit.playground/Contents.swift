import Cocoa

let celsius = 25.0
print("Celsius: \(celsius) -> Fehrenheit: \((celsius * 9) / 5 + 32)")

assert(((celsius * 9) / 5 + 32) == 77.0, "Expecting 25 Celsius to be 77 Fehrenheit")
