import Foundation
//https://www.hackerrank.com/challenges/maximizing-xor/
/// Method 1  : Use 2 For loops and get the answer : conventional Method, Use this if you cannot think of the answer below
func maximizingXor(l: Int, r: Int) -> Int {
var maxx = 0
    for i in l ... r{
        for j in l ... r
        {
            maxx = max(maxx, i ^ j)
        }
    }
    return maxx
}
///Method 2 : use the Leading zero bit count. Notice that while going through the xor values in the above method, a cycle is noticed and the values repeat . we can use the fact that if we take the xor of the maximum and minimum values, we can find the point in the binary representation till which the leftmost value is significant (here it means where it is not zer0). To do this , first find the point till which the last zero exists from left to right in the binary representation. here in swift we use 32 or 64 bit integers, (usually 64 ) so it takes the last zero starting from the 0th upto 63rd position. (refer to the comment below)
func maximizingXor(l: Int, r: Int) -> Int {
    // print(String(l^r, radix: 2),(l^r).leadingZeroBitCount) Uncomment this for reference
     let binString = 64 -  (l^r).leadingZeroBitCount // now just subtract 64 from this position to find the highest power of 2 that is significant. (done below) . the binary representation of this binstring (below) gives us the max value within that range
    return Int(String(repeating: "1", count: binString),radix: 2)! //
}
print(maximizingXor(l: 11 , r: 100))

