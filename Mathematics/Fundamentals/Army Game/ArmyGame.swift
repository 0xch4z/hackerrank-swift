import Foundation

 //Question : https://www.hackerrank.com/challenges/game-with-cells/
///METHOD 1 :
//Logic: Observe that every grid here can be plotted such that a point may cover 1, 2 or 4 bases. using this fact, we can see that when both n and m are even , they just need n - 1 * m - 1 /4  supply houses. if the number is odd, just round it to the next even number. note that 2 edge cases are there, they are solved as below.
func gameWithCells(n: Int, m: Int) -> Int {
   if n == 1 || m == 1 {
       if n == m {return 1}
       return Int(ceil(Double(max(n,m)) / 2.0))
   }
if n * m <= 4 {return 1}
var nn = n
var mm = m
   if n % 2 != 0 {nn += 1}
    if m % 2 != 0 {mm += 1}
   return Int(ceil(Double(mm * nn) / 4.0))

}
/// METHOD 2
/// Logic: it can be observed that the needed supply houses is just ceil(row number divided by 2) * ceil(column number divided by 2). this falls in line with the logic as above, albeit in a shorter and swifter way
func gameWithCells(n: Int, m: Int) -> Int {
   return Int(ceil(Double(n) as Double / 2) * ceil(Double(n) as Double / 2))

}
 
let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
print(gameWithCells(n:input[0],m:input[1]))
