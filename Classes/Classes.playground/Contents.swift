import UIKit

var greeting = "Hello, playground"

class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
    func toString() -> String {
        "Dog { name: \(self.name), breed: \(self.breed) }"
    }
    
    func makeNoise() {
        print("Woof!")
    }
}

var g1 = Dog(name: "G1", breed: "German Shepherd")
print(g1.toString())
print(g1.makeNoise())

class MyDog: Dog {
    init(name: String) {
        super.init(name: name, breed: "Fisi")
    }
    
    override func makeNoise() {
        print("Yelp!")
    }
}

var myDog = MyDog(name: "My Dog")
print(myDog.toString())
print(myDog.makeNoise())

// use final to restrict other classes from inheriting
final class FakeDog {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Singer {
    var name: String
    init(name: String) {
        self.name = name
    }
}

// class copy changes the original variable
var tim = Singer(name: "Tim")
var timCopy = tim
timCopy.name = "Bazu"
print(tim.name)
print(timCopy.name)

// struct copy does not change the original variable
struct Artist {
    var name: String
    init(name: String) {
        self.name = name
    }
}
var shusho = Artist(name: "Shusho")
var shushoCopy = shusho
shushoCopy.name = "Bahati"
print(shusho.name)
print(shushoCopy.name)

// de initializers
// code that runs when a class gets destroyed
class Person {
    var name: String = "Tim"
    init() {
        print("\(name) Created!")
    }
    func greet() {
        print("Hello I am \(name)")
    }
    deinit {
        print("\(name) is no more!")
    }
}

for _ in 1...3 {
    let person = Person()
    person.greet()
}

// mutabiity

class Town {
    let name: String
    init(name: String) {
        self.name = name
    }
}

var town = Town(name: "Eldoret")
//town.name = "Nairobi"
