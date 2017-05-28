import Foundation;

// Get input
_ = readLine()!.components(separatedBy: " ").map{ Int($0)! } // irrelavent
let stack1Elements = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let stack2Elements = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let stack3Elements = readLine()!.components(separatedBy: " ").map{ Int($0)! }

// MARK: - *Special* Stack Model
struct Stack {
    public var items = [Int]()
    public var history = [Int]()
    public var isEmpty: Bool {
        return (items.count == 0)
    }
    public var height: Int {
        var currentHeight = 0
        for element in items {
            currentHeight += element
        }
        return currentHeight
    }
    // Appends element
    mutating func push(_ element: Int) {
        items.append(element)
        if !history.contains(height) {
            history.append(height)
        }
    }
    // Returns head and discards
    mutating func pop() -> Int? {
        if !isEmpty {
            return items.removeLast()
        } else {
            return nil
        }
    }
    // Returns head without discarding
   func peek() -> Int? {
        if !isEmpty {
            return items.last
        } else {
            return nil
        }
    }
}


// MARK: - Binary Search Function
func binarySearch<T: Comparable>(_ arr: [T], key: T, range: Range<Int>) -> Bool {
    if range.lowerBound >= range.upperBound {
        return false
    } else {
        let midIndex = range.lowerBound + (range.upperBound - range.lowerBound) / 2
        if arr[midIndex] > key {
            return binarySearch(arr, key: key, range: range.lowerBound ..< midIndex)
        } else if arr[midIndex] < key {
            return binarySearch(arr, key: key, range: midIndex + 1 ..< range.upperBound)
        } else {
            return true
        }
    }
}

// MARK: - Pattern Specifc Stack Initializer
func initializeStackWithDataSet(elements: [Int]) -> Stack {
    var stack = Stack()
    // push all predefined elements to stack instance
    for element in elements.reversed() {
        stack.push(element)
    }
    // return stack
    return stack
}

// MARK: - Stack Input Processing
var stack1 = initializeStackWithDataSet(elements: stack1Elements)
var stack2 = initializeStackWithDataSet(elements: stack2Elements)
var stack3 = initializeStackWithDataSet(elements: stack3Elements)

func commonHeights() -> Int {
    var result = 0
    for height in stack1.history.reversed() {
        if binarySearch(stack2.history, key: height, range: 0..<stack2.history.count) && binarySearch(stack3.history, key: height, range: 0..<stack3.history.count) {
            result = height
            return result
        }
    }
    return result
}

// Returns max common stack height
let maxCommonHeight: Int = commonHeights()

print(maxCommonHeight)
