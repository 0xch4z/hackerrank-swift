import Foundation

// Get input
let n = Int(readLine()!)!

// MARK - Fibonacci Function
var memo = [Int:Int]()
func fibonacci(_ n: Int) -> Int {
    if n == 0 {
        return 0
    } else if n == 1 {
        return 1
    } else {
        if memo[n] == nil {
            memo[n] = fibonacci(n - 1) + fibonacci(n - 2)
        }
        return memo[n]!
    }
}

print(fibonacci(n))
