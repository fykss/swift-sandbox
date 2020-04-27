func maxSubArray(_ nums: [Int]) -> Int {
    var dp = nums
    for i in 1..<dp.count {
        dp[i] = [dp[i], dp[i-1] + dp[i]].max()!
    }
    return dp.max()!
}

// Describe [-2, 1, -2, 4,  3, 5, 6,  1, 5]
var case1 = [-2, 1, -3, 4, -1, 2, 1, -5, 4]

assert(maxSubArray(case1) == 6, "Invalid case 1")

print("Test completed")
