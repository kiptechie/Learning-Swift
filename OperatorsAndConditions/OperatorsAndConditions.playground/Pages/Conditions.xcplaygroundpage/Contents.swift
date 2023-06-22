//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

let firstScore = 6
let secondScore = 4

firstScore == secondScore
firstScore != secondScore

firstScore < secondScore
firstScore >= secondScore

"Tim" <= "Serem"

"Apples" <= "Banana" // natural alphabetical order

let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 2 {
    print("Aces - lucky!")
} else if firstCard + secondCard == 21 {
    print("Jocker!")
} else {
    print("Regular")
}

let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("One is over 18")
}

let one = 10
let two = 20
print(one == two ? "Same" : "Diff")

let weather = "rainy"

switch weather {
case "rainy":
    print("Bring umbrella!")
case "sunny":
    print("Do not forget sunscreen!")
default:
    print("Enjoy your day!")
}

// Range operators

let score = 85
switch score {
case 0..<50:
    print("Failed")
case 50..<85:
    print("Ok")
default:
    print("Pssst")
}

//: [Next](@next)
