import Foundation

// read the integer n
let n = Int(readLine()!)!

// print the staircase
func drawStaircase(size n: Int) -> String {
    var stairs = String()
    // iterate over range of 1 and n
    for step in (1...n).reversed() {
        // repeat \s and # accordingly
        stairs += String(repeating: " ", count: step - 1) + String(repeating: "#", count: n + 1 - step) + "\n"
    }
    return stairs
}

print(drawStaircase(size: n))
