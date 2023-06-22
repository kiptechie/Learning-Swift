import UIKit

var greeting = "Hello, playground"

let count = 1...10

for number in count {
    print("Number \(number)")
}

let artists = ["Sauti Sol", "Ali Kiba", "Diamond"]

for artist in artists {
    print("Artist name: \(artist)")
}

print("Players gonna ")
for _ in 1...5 {
    print("Play")
}

var num = 1
while num <= 20 {
    print(num)
    num += 1
}
print("Ready or not here I come")

// repeat loop
// like while loop but condition comes at the end
num = 1
repeat {
    print(num)
    num += 1
} while num <= 20
print("Live, Love, Run, Repeat")

var countdown = 10
while countdown <= 10 {
    print(countdown)
    if (countdown == 5) {
        print("I am bored, Blast off now!")
        break
    }
    countdown -= 1
}
print(countdown == 5 ? "Someone got bored" : "Blast off!")

// exiting multiple loops (nested loops)
for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) = \(product)")
    }
}

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) = \(product)")
        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    print(i)
}

// infinite loops
var counter = 0
while true {
    print(" ")
    counter += 1
    if counter == 273 {
        break
    }
}
