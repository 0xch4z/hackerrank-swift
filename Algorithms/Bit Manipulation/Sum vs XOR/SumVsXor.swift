import Foundation
//https://www.hackerrank.com/challenges/sum-vs-xor/
//Logic: Xor acts as a logical addition without carry. so this function must depend on the number of zeros in n , since when i'th bit is zero, if you add 1 to it you still get zero. also the ith bit can have 2^n possible permutations. so we in total get 2^number of zero bits in the number.

var n = Int(readLine()!)!
n = (64 - n.leadingZeroBitCount - n.nonzeroBitCount)

// 64 because that is the width of an integer in swift in binary.. maximum is (2^65 - 1) (technically that is considered infinite here.)
// now , we find the number of possible combinations by bitwise shifting till n is achieved.
var res = 1
while n != 0
{
    res <<= 1
    n -= 1
}
print(res)
