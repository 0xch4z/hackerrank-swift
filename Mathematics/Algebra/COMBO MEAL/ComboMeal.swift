 import Foundation
/// Question : https://www.hackerrank.com/challenges/combo-meal
 /// LOGIC : plot the functions as below :
// burger + profit = price 1
 // drink + profit = price 2
 // burger + drink + profit = price 3
 // solve for profit since price 1, 2 and 3 are given, you get the equation reduced to price 1 + price 2 - price 3
 
 func profit(_ b: Int,_ s: Int,_ c: Int) -> Int {
     // Return the fixed profit.
   let fixedProfit = b + s - c
   
   return fixedProfit
 }

 let n = Int(readLine()!)!
 for _ in 1 ... n
 {
     let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
      print(profit(input[0],input[1],input[2]))
 }
