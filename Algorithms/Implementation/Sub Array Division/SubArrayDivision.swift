 import Foundation
//https://www.hackerrank.com/challenges/the-birthday-bar
 func birthday(s: [Int], d: Int, m: Int) -> Int {
     var count = 0
     var numberOfWays = 0
 if (s.count >= m)
 {for i in 0...(s.count  - m)
 { count = 0
   for j in i...(i + m - 1)
   {
   count += s[j]
   }
   if(count == d)
   {
  numberOfWays += 1
   }

 }}
 return numberOfWays
 }
