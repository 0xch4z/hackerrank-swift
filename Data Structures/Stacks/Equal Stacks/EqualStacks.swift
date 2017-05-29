iimport Foundation;

// Get elements; get stack height
_ = readLine()!.components(separatedBy: " ").map{ Int($0)! } // irrelavent
var stack1 = readLine()!.components(separatedBy: " ").map{ Int($0)! }; var stack1Height = stack1.reduce(0, +)
var stack2 = readLine()!.components(separatedBy: " ").map{ Int($0)! }; var stack2Height = stack2.reduce(0, +)
var stack3 = readLine()!.components(separatedBy: " ").map{ Int($0)! }; var stack3Height = stack3.reduce(0, +)

// Remove elements until stacks are equal in height
while stack1Height != stack2Height || stack1Height != stack3Height || stack2Height != stack3Height {
   if (stack1Height >= stack2Height) && (stack1Height >= stack3Height) {
        stack1Height -= stack1.removeFirst()
    } else if (stack2Height >= stack1Height) && (stack2Height >= stack3Height) {
        stack2Height -= stack2.removeFirst()
    } else if (stack3Height >= stack1Height) && (stack3Height >= stack2Height) {
        stack3Height -= stack3.removeFirst()
    }
}

// Return equal height
print(stack1Height)
