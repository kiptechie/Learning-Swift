import UIKit

var greeting = "Hello, playground"

var age: Int? = nil
age = 25

var name: String? = nil
if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name!")
}

func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You did not provide a name!")
        return
    }
    print("Hello, \(unwrapped)!")
}

greet(nil)

let str = "5"
let num = Int(str)!

let mAge: Int! = nil

func username(id: Int) -> String? {
    if id == 1 {
        return "Tim"
    } else {
        return nil
    }
}

let mName = username(id: 100) ?? "Anon"

let names = ["Tim", "Kip", "Serem"]
let first = names.first?.uppercased()

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You cannot use that password!")
}

if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("Psssst")
}

try! checkPassword("HelloWorld!")
print("OK")

struct Person {
    var id: String
    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}

// type casting

class Animal {}
class Fish: Animal {}
class Dog: Animal {
    func bark() {
        print("Woof")
    }
}

let pets = [Fish(), Dog(), Fish(), Dog()]

for pet in pets {
    if let dog = pet as? Dog {
        dog.bark()
    }
}
