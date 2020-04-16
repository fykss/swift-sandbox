// Docs: https://docs.swift.org/swift-book/LanguageGuide/ControlFlow.html


var isActive: Bool = true
var user: String = "Bob"

// The if else statement
if user == "Alice" && isActive {
    print("Alice is active!")
} else if user == "Bob" && !isActive {
    print("Bob is lazy!")
} else {
    print("When none of the above are true...")
}

// Ternary Conditional Operator
let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)

// Nil-Coalescing Operator
let defaultColorName = "red"
var userDefinedColorName: String?   // defaults to nil

//userDefinedColorName = "green"

var colorNameToUse = userDefinedColorName ?? defaultColorName
// userDefinedColorName is nil, so colorNameToUse is set to the default of "red"

// Switch statement
let someCharacter: Character = "z"
switch someCharacter {
case "a":
    print("The first letter of the alphabet")
case "z":
    print("The last letter of the alphabet")
default:
    print("Some other character")
}



