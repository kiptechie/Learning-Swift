import UIKit

var greeting = "Hello, playground"

let driving = {
    print("I am driving")
}

driving()

let cruising = { (place: String) in
    print("Cruising in the \(place)")
}

cruising("Sea")

let drivingWithReturn = { (place: String) -> String in
    return "I am driving in \(place)"
}

let ans = drivingWithReturn("Ocean")

// closures as parameters
func travel(action: () -> Void) {
    action()
}

travel(action: driving)

travel() {
    print("I am traveling")
}

travel {
    print("I am traveling")
}

func travelWithParam(action: (String) -> Void) {
    action("Nairobi")
}

travelWithParam { (place: String) in
    print("I am travelling to \(place)")
}

// return data

func travelWithReturn(action: (String) -> String) {
    print("I am getting ready to go!")
    let desc = action("Nairobi")
    print(desc)
    print("Arrived")
}

travelWithReturn { (place: String) -> String in
    return "I am going to \(place)"
}

func travelWithSpeed(action: (String, Int) -> String) {
    let desc = action("Nairobi", 100)
    print(desc)
}

travelWithSpeed {
    return "I am going to \($0) at \($1)Kph"
}

// returning closures from functions
func safiri() -> (String) -> Void {
    var counter = 0
    return {
        print("I am going to \($0)")
        counter += 1
        print("Counter: \(counter)")
    }
}

let res = safiri()
res("Eldoret")
res("Eldoret")
res("Eldoret")
res("Eldoret")

// closures part two
func travel2(action: (String) -> Void) {
    print("I am getting ready")
    action("Nairobi")
    print("Arrived")
}

travel2 { (place: String) in
    print("I am going to \(place) in my car")
}

func travel3(action:(String) -> String) {
    print("I am getting ready")
    let desc = action("Nairobi")
    print("Arrived")
}

travel3 { (place: String) -> String in
    return "I am going to \(place) in my car"
}

// alternative syntax
travel3 { place in
    "I am going to \(place) in my car"
}

// closures with multiple params
travelWithSpeed {
    "I am going to \($0) at \($1) kilometers per hour."
}
