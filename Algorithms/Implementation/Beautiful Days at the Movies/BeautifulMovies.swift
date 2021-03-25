import Foundation
//https://www.hackerrank.com/challenges/beautiful-days-at-the-movies/
//TODO: GIVE LOGIC
func reve(_ num:Int) -> Int
{
    var n = num
var rev = 0
while (n > 0)
{
    rev = rev *  10 + (n % 10)
    n /= 10
}
return rev
}
func beautifulDays(i: Int, j: Int, k: Int) -> Int {
var numbers = 0
for num in i...j
{
 if((((num - reve(num)) % k) == 0))
 {numbers += 1}
}
return numbers
}
