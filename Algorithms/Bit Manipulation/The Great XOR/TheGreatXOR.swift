import Foundation
//https://www.hackerrank.com/challenges/the-great-xor
//Logic: Notice that every zero you encounter in the bit representation of the number allows you to have  2^ (that zero's index) more combinations of i ^ n > n where i < n
// idea : count the zeros and add to a total 2^ that zero's index

import Foundation
let inputs = Int(readLine()!)!
for _ in 1 ... inputs
{
// idea : count the zeros and add to a total 2^ that zero's index
    var arr = Array(String(Int(readLine()!)!,radix: 2))
    var sum = 0
    var bitshift = 1
    while(!arr.isEmpty)
    {
        if arr.removeLast() == "0"
        {
            sum += bitshift
        }
        bitshift <<= 1
    }
    print(sum)
}

