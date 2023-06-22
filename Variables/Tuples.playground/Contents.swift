import UIKit

var greeting = "Hello Tuples, playground"

// you cannot add or remove items they are fixed in size
// you cannot change the type of items
// you can access items using numerical positions or by naming them, but be careful reading numbers or names that do not exist (CRASH)
var name = (first: "Tim", last: "Serem")
name.0
name.first
name.1
name.last
