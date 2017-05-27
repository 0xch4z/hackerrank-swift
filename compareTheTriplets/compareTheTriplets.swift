import Foundation

// Get number input
let a = readLine()!.components(separatedBy: " ").map { Int($0)!}
let b = readLine()!.components(separatedBy: " ").map { Int($0)!}

// Map numbers to dictionary
var numbers = [Int:Int]()
for (index, element) in a.enumerated() {
    numbers[element] = b[index]
}


// Initialize score counters
var aScore = 0
var bScore = 0

func compare(_ anumber: Int, _ bnumber: Int) {
    if anumber > bnumber {
        aScore += 1
    } else if bnumber > anumber {
        bScore += 1
    }
}

// Compare number set
for (anumber, bnumber) in numbers {
    compare(anumber, bnumber)
}

// Output scores
print(aScore, bScore)
