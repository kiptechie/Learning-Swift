import UIKit

var greeting = "Hello Enums, playground"

enum Result {
    case success
    case failure
}

let result = Result.success
result

enum Activity {
    case bored(isBored: Bool)
    case talking(destination: String)
    case sleeping(isSleeping: Bool)
}

let sleeping = Activity.sleeping(isSleeping: false)


enum Planet: Int {
    case mercury = 1
    case mars
    case earth
}

let planet = Planet(rawValue: 3)
