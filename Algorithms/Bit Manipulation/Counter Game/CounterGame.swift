import Foundation
import Darwin
//https://www.hackerrank.com/challenges/counter-game
//Logic : We first check if the number is a power of 2 using  logical AND. if it is not we find the
let inputs = Int(readLine()!)!
for _ in 1 ... inputs
{
     var n = Int(readLine()!)!
  var steps = false
while n != 1
{
    if (n & (n - 1)) == 0
{
    steps =  (n.trailingZeroBitCount) % 2 == 0 ? steps : !steps
    break
 }
else
{
    // 64 is used here since the maximum possible leading zero bit count in swift for integers is 64 for zero value
    // the << is the bitwise shift function. it shifts the given value (here 1) of binary by the value on the right
    let prevpower = 1 << (64 -  n.leadingZeroBitCount - 1)
    n = n - prevpower
    steps = !steps
 }
}
    if steps
    {
    print("Louise")
}
else
{
    print("Richard")
}

}


