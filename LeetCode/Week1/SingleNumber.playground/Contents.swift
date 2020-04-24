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

print(singleNumber([1, 3, 1, 3, 2]))


