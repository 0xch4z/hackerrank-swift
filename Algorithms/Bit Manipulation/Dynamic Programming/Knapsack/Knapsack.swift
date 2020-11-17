 import Foundation
//https://www.hackerrank.com/challenges/unbounded-knapsack/
 ///LOGIC: In dynamic programming, we often use one result to get the corresponding next result. here, the logic used is that given an array of possible coins (arr in the function), If we calculate all possible solutions upto said number k , we can use previous value to get the required result (try drawing an array on paper as you do this, it becomes apparent.)
   func unboundedKnapsack(k: Int, arr: [Int]) -> Int {
     var dp  = Array(repeating: 0, count: k + 1)
     for i in 0 ... k
     {
         for n in Set(arr)
         {
             if n <= i
             {
                 dp[i] = max(dp[i],dp[i - n] + n)
             }
         }
     }
 return dp[k]
  }
 let i = Int(readLine()!)!
 for _ in 1 ... i
 {
     let inp1 = readLine()!.split(separator: " ").map{ Int(String($0))! }
     let inp2 = readLine()!.split(separator: " ").map{ Int(String($0))! }
     print(unboundedKnapsack(k: inp1[1], arr: inp2))
 }
  
