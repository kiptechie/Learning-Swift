import UIKit

var greeting = "Hello, playground"

protocol Identifiable {
    var id: String { get set }
}

struct User: Identifiable {
    var id: String
    init(id: String) {
        self.id = id
    }
}

func displayIdentifiable(identifiable: Identifiable) {
    print(identifiable.id)
}

displayIdentifiable(identifiable: User(id: "My ID"))

protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation { }

class SeniorEmployee: Employee {
    func calculateWages() -> Int {
        return 1000
    }
    
    func takeVacation(days: Int) {
        print("Vacation days: \(days)")
    }
    
    func study() {
      print("Studying")
    }
}

var worker = SeniorEmployee()
worker.calculateWages()
worker.takeVacation(days: 2)
worker.study()

// extensions

extension Int {
    func squared() -> Int {
        return self * self
    }
    var isEven: Bool {
        return self % 2 == 0
    }
}

var num = 4
num.squared()
num.isEven

// protocol extensions
let tims = ["Tim", "Kipkorir", "Serem"]
let serems = Set(["Henry", "Martin", "Nick"])

extension Collection {
    func summarize() {
        print("Collection has \(self.count) items")
        for name in self {
            print(name)
        }
    }
}

tims.summarize()
serems.summarize()

