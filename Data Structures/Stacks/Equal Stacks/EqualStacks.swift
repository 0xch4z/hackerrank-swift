import Foundation;
/// Updated for swift 5 , reversed the array so that access time is faster

// Get elements; get stack height
_ = readLine()!.split(separator: " ").map{ Int($0)! } // irrelavent
var stack1 = Array(readLine()!.split(separator: " ").map{ Int($0)! }.reversed()); var height1 = stack1.reduce(0, +)
var stack2 = Array(readLine()!.split(separator: " ").map{ Int($0)! }.reversed()); var height2 = stack2.reduce(0, +)
var stack3 = Array(readLine()!.split(separator: " ").map{ Int($0)! }.reversed()); var height3 = stack3.reduce(0, +)

// Remove elements until stacks are equal in height
while height1 != height2 || height1 != height3 || height2 != height3 {
   if (height1 >= height2) && (height1 >= height3) {
        height1 -= stack1.removeFirst()
    } else if (height2 >= height1) && (height2 >= height3) {
        height2 -= stack2.removeFirst()
    } else if (height3 >= height1) && (height3 >= height2) {
        height3 -= stack3.removeFirst()
    }
}

// Return equal height
print(height1)

