import UIKit

var greeting = "Hello, playground"

func printHello() {
    print("Hello")
}

printHello()

func square(number: Int) -> Int {
    return number * number
}

let result = square(number: 8)

// parameter labels

func sayHello(to name: String) {
    print("Hello \(name)")
}

sayHello(to: "Tim")


func greet(_ person: String) {
    print("Hello, \(person)")
}

greet("Serem")

// default parameters
func salimia(_ mtu: String, vizuri: Bool = true) {
    if vizuri {
        print("Hujambo, \(mtu)")
    } else {
        print("Niaje, \(mtu)")
    }
}

salimia("Ben")

salimia("Tim", vizuri: false)

// variadic functions
// accepts numerous parameters

func squareMany(_ numbers: Int...) {
    for number in numbers {
        print(number * number)
    }
}

squareMany(1,2,3,4,5)

enum PasswordError: Error {
    case obvious
}


func checkPassword(passwordToCheck password: String) throws -> Bool {
    if password == "123" {
        throw PasswordError.obvious
    } else {
        return true
    }
}

do {
    try checkPassword(passwordToCheck: "123")
    print("Valid password")
} catch {
    print("Obvious password")
}

do {
    try checkPassword(passwordToCheck: "321")
    print("Valid password")
} catch {
    print("Obvious password")
}

// inout parameters
func doubleInPlace(number: inout Int) {
    number *= 2
}

var num = 2

doubleInPlace(number: &num)

print(num)
