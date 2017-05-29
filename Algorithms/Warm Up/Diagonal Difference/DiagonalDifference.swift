import Foundation

// read the integer n
let n = Int(readLine()!)!

// declare 2d array
var arr: [[Int]] = []

// read array row-by-row
for _ in 0..<n {
    arr.append(readLine()!.components(separatedBy: " ").map{ Int($0)! })
}

// get primary diagonal
var primaryDiagonalSum: Int {
    var pos = 0
    var sum = 0
    // traverse array, add int at index
    for line in arr {
        sum += (line[pos])
        pos += 1
    }
    return sum
}

// get secondary diagonal
var secondaryDiagonalSum: Int {
    var pos = 0
    var sum = 0
    // traverse array backwards, add int at index
    for line in (0...arr.count - 1).reversed() {
        sum += (arr[line])[pos]
        pos += 1
    }
    return sum
}

print(abs(primaryDiagonalSum - secondaryDiagonalSum))
