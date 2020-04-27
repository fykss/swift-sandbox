func singleNumber(_ nums: [Int]) -> Int {
    let mappedItems = nums.map { ($0, 1) }
    let counts = Dictionary(mappedItems, uniquingKeysWith: +)

    for num in nums{
        if counts[num] == 1 {
            return num
        }
    }
    
    return 0
}

// Interest solution
func singleNumberInt(_ nums: [Int]) -> Int {
    return 2 * Set(nums).reduce(0, +) - nums.reduce(0, +)
}

var case1 = [1, 3, 1, 3, 2]
var case2 = [2, 2, 1]
var case3 = [5, 2, 2, 5, 10, 10, -1]

assert(singleNumber(case1) == 2, "Invalid case 1")
assert(singleNumber(case2) == 1, "Invalid case 2")
assert(singleNumber(case3) == -1, "Invalid case 2")

print("Test completed")



