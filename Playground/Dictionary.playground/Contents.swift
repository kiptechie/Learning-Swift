import UIKit

var greeting = "Hello Dictionary, playground"

let heights: [String: Double] = ["Tim": 1.70, "Serem": 1.75]
heights.values
heights["Tim"]
// if value does not exist Swift returns Nil
heights["kipkorir"]

var teams = [String: String]()
teams["Tim"] = "Blue"
var results = [Int]()
var words = Set<String>()
var numbers = Set<Int>()
