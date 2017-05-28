import Foundation;

// Get input
let ints = readLine()!.components(separatedBy: " ").map{ Int($0)! }

// Insertion Sort Function => O(n^2)
func insertionSort(_ array: [Int]) -> [Int] {
  var sort = array
  for x in 1..<sort.count {
    var y = x
    while y > 0 && sort[y] < sort[y - 1] {
      swap(&sort[y - 1], &sort[y])
      y -= 1
    }
  }
  return sort
}

// Sort ints
let sortedInts = insertionSort(ints)

// Get min and max via index
let minSum = sortedInts[0] + sortedInts[1] + sortedInts[2] + sortedInts[3]
let maxSum = sortedInts[1] + sortedInts[2] + sortedInts[3] + sortedInts[4]

print(minSum, maxSum)
