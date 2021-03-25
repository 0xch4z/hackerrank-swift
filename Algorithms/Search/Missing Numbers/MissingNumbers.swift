import Foundation
/// MissingNumbers.swift :
/// problem : https://www.hackerrank.com/challenges/missing-numbers/problem
//Method 1 : Using arrays : the question states that the minimum and maximum elements have difference of 100, so we need a caching array of size 100.we just store the values by subtracting either max or min with the traversed value and then just store it .while traversing brr, just decrement the caching array elements. then loop throught the caching array and see which are deviating from zero. those are not there / lost.
func missingNumbers(arr: [Int], brr: [Int]) -> [Int] {
    var num = Array(repeating: 0, count: 101)
    var res :[Int] = []
    let min = brr.min()!
    for i in arr
    {
     num[i - min] += 1
    }
    for i in brr
    {
    num[i - min] -= 1
    }
    for i in 0 ..< num.count - 1
    {
        if num[i] < 0
        {
            res.append(min + i)
        }
    }
    return res
}

//Method 2 : using dictionary
func missingNumbers2(arr: [Int], brr: [Int]) -> [Int] {
 
var dict :[Int : Int] = [:]
for i in arr
{
    dict[i] = dict[i] == nil ? 1 : dict[i]! + 1
}
var array : [Int] = []
for i in brr {
    if dict[i] == nil || dict[i] == 0
    {
        array.append(i)
    }
  else
    {
        dict[i]! -= 1
    }
}
return (Array(Set(array)).sorted())


}
let _ = readLine()!
let arr = readLine()!.split(separator: " ").map{ Int(String($0))! }
let _ = readLine()!
let brr = readLine()!.split(separator: " ").map{ Int(String($0))! }
// use either function to solve.
