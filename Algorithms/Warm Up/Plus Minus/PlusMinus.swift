import Foundation

// number of elements
let n = Int(readLine()!)!

// read array and map the elements to integer
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }

// Initialize counters
var positiveCount = 0.0
var negitiveCount = 0.0
var zeroCount = 0.0

// Score integers
for int in arr {
    if int > 0 {
        positiveCount += 1.0
    } else if int < 0 {
        negitiveCount += 1.0
    } else {
        zeroCount += 1.0
    }
}

var total =  positiveCount + negitiveCount + zeroCount

// Get fractions
var percentPositive = positiveCount / total
var percentNegitive = negitiveCount / total
var percentZero = zeroCount / total

// Output fractions
print("\(percentPositive)\n\(percentNegitive)\n\(percentZero)")
