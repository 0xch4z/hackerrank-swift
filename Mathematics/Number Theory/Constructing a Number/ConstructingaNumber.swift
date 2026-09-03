import Foundation
//Constructing a Number : -https://www.hackerrank.com/challenges/constructing-a-number
// idea: In number theory, we know that if the sum of the individual digits
// gives a number divisible by 3 , then the number itself is divisible by 3
// thus here, when we combine all the numbers, if their individual digits add up to a number divisible by 3 we print Yes otherwise No
let cases = Int(readLine()!)!
for _ in 1 ... cases
{
    let temp = readLine()!
    var sum = 0
    let arr = Array(readLine()!)
    for i in arr
    {
        if let num = i.wholeNumberValue // swift char has a .wholeNumberValue function. Mapping and reducing take time, and if let here is faster
        {
            sum += num
        }
    }
    if sum % 3 == 0
    {
        print("Yes")
    }
    else
    {
        print("No")
    }
}
