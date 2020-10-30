import Foundation
// https://www.hackerrank.com/challenges/flipping-bits
//Logic: Flipping the bits can be associated with just subtracting the given value from the maximum possible value of the integer range. here we take the maximum value of 32 bit integer which is 2^32 - 1
let inputs = Int(readLine()!)!
for _ in 1 ... inputs
{
    let n = Int(readLine()!)!
    print(UInt32.max - UInt32(n))
}
