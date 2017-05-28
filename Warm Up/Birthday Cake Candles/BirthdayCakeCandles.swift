import Foundation;

// Get input
_ = Int(readLine()!)! // irrelavent
let candleHeights = readLine()!.components(separatedBy: " ").map{ Int($0)! }

// Get max height
let maxHeight: Int = candleHeights.max()!

var counter = 0
for height in candleHeights {
    if maxHeight == height {
        counter += 1
    }
}

print(counter)
