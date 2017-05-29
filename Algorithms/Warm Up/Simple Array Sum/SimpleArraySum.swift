import Foundation

// number of elements
let n = Int(readLine()!)!

// read array and map the elements to integer
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }

// find and print the sum of array
var total = Int()
for num in arr {
  total += num
}
print(total)
