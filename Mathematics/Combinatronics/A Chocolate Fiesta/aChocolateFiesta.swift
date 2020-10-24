import Foundation
//Question :https://www.hackerrank.com/challenges/a-chocolate-fiesta
 ///LOGIC : The rule of set theory states that a set of n objects has 2^n subsets (including null)
 /// We shall find the count of 2 sets : one of odd numbers and one of even numbers.
/// NOTE: since int has a small range in swift, we use UInt64 which is similar to long long int in c
// below is a modular power function that divides the factorial by 1000000007 at every iteration. this helps in keeping track of really large numbers
func power(_ number :  UInt64) -> UInt64
{
    if number <= 0 {return 1}
    var result : UInt64 = 1
    for _ in 1 ... number
    {
        result *= 2
        result %= 1000000007
    }
    return result % 1000000007
}

func solve(a: [Int]) -> UInt64 {
    var odd : UInt64 = 0
    var even  : UInt64 = 0
 for i in a
{
    if i % 2 == 0 {even += 1}
    else
    {
        odd += 1
    }
}
// first we add all possible odd numbers:
    // for number of possible subsets with even sum, it is just half of the total possible ways . so we just half it and subract 1
      
    odd = power(odd > 0 ? odd - 1 : 0) - 1// -1 gets rid of the null set , and the ternary operator here is used since UInt64 does not have a negative range
    even = power(even > 0 ? even : 0) - 1

// now that we have added the possible odd and even sets, we combine the both , ie possible ways of even times odd
let oddeven = odd * even
 
return (odd + even + oddeven) % 1000000007
}

let n = Int(readLine()!)!
for _ in 1 ... n
{
    let arr = readLine()!.split(separator: " ").map{ Int(String($0))! }
    print(solve(a: arr))

}
