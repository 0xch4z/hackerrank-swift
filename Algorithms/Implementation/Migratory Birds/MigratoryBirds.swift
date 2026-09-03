 import Foundation
//https://www.hackerrank.com/challenges/migratory-birds
 // Logic: just increment the number of occurances of a particular type of bird. then find its maximum . firstindex will find the first one which is equal to the max.
 func migratoryBirds(arr: [Int]) -> Int
 {
 var countArray = Array(repeating: 0, count: 9)
    for i in 0..< arr.count
 {
     countArray[arr[i] - 1] += 1
 }
 return (countArray.firstIndex(of:countArray.max()!)! + 1)
 }
