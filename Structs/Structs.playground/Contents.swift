import UIKit

var greeting = "Hello, playground"

// this defines a type
struct Sport {
    var name: String
    var isOlympicSport: Bool
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an olympic sport"
        } else {
            return "\(name) is not an olympic sport"
        }
    }
}

// create an instance

var cod = Sport(name: "Call of Duty", isOlympicSport: false)
print(cod.name)
print(cod.olympicStatus)

struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)

for i in 0...100 {
    progress.amount = i;
    //sleep(1)
}

struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}

var city = City(population: 1_000_000)
print(city.collectTaxes())

struct Person {
    var name: String
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var tim = Person(name: "Tim")
print(tim.name)
tim.makeAnonymous()
print(tim.name)

// strings are structs
let string = "Hello world"
print(string.count)
print(string.hasPrefix("He"))
print(string.uppercased())

// arrays are also structs
var toys = ["Woody"]
print(toys.count)
toys.append("Moody")
toys.remove(at: 1)
print(toys)

// initializers

struct User {
    var name: String
    
    init(name: String = "Anon") {
        self.name = name
        print("Creating new User! with name: \(self.name)")
    }
}

var userTim = User(name: "Tim")
print(userTim.name)
var anonUser = User()
print(anonUser.name)

// lazy properties

struct FamilyTree {
    init() {
        print("Creating Family Tree")
    }
}

struct Member {
    var name: String
    lazy var familyTree: FamilyTree = FamilyTree()
    
    init(name: String) {
        self.name = name
    }
}

var memberTim = Member(name: "Tim")
print(memberTim.name)
print(memberTim.familyTree)

// static properties and methods

struct Student {
    static var classSize = 0
    var name: String
    init(name:String) {
        self.name = name
        Student.classSize += 1
    }
}

var studentTim = Student(name: "Tim")
var studentSerem = Student(name: "Serem")
print(Student.classSize)

// access control
struct Person2 {
    private var id: String
    
    init(id: String) {
        self.id = id
    }
    
    func getId() -> String {
        return id
    }
}

var person2Tim = Person2(id: "1234567890")
print(person2Tim.getId())
