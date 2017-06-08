import Foundation;

// get scores
_ = readLine()!
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }

var upper = arr[0]
var lower = arr[0]
var upperCounter = 0
var lowerCounter = 0

// compare scores
for score in arr {
    if (score > upper) {
        upper = score
        upperCounter += 1
    } else if (score < lower) {
        lower = score
        lowerCounter += 1
    }
}

print(upperCounter, lowerCounter)
