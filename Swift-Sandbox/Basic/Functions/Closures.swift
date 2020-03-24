// First Example

// USE FOR TEST
// print(calculator(n1: 1, n2: 3, operation: add))
// print(calculator(n1: 1, n2: 3, operation: multiply))

// Closure syntax
// print(calculator(n1: 1, n2: 3, operation: { (n1, n2) in n1 * n2 }))
// or like this
// print(calculator(n1: 1, n2: 3, operation: { $0 * $1 }))
// Trailing Closures
// print(calculator(n1: 1, n2: 3) { $0 * $1 })

func calculator(n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(n1, n2)
}

func add(n1: Int, n2: Int) -> Int {
    return n1 + n2
}

func multiply(n1: Int, n2: Int) -> Int {
    return n1 * n2
}

// Second Example

// USE FOR TEST
//let array = [6, 2, 3, 9, 4, 1]
//
//print(array.map{ $0 + 1 })
