 //https://www.hackerrank.com/challenges/lilys-homework/
 import Foundation
//Logic : basically jj
 func lilysHomework(arr: [Int]) -> Int {
 // first create a dictionary with the keys as values.
    var dict: [Int:Int] = [:] , minimum = Int.max
    for i in 0 ..< arr.count{
        dict[arr[i]] = i
    }
    var ascarr = arr.sorted(), tarr = arr,tempd = dict, c = 0
    
    for i in 0 ..< arr.count
    {
        if ascarr[i] != tarr[i]
        {
             c += 1
            tempd[tarr[i]] = tempd[ascarr[i]]
            tarr.swapAt(i,tempd[ascarr[i]]!)
         }
    }
    minimum = min(minimum, c)
    c = 0
    ascarr = arr.sorted(by: >); tarr = arr ;tempd = dict
    for i in 0 ..< arr.count
    {
        if ascarr[i] != tarr[i]
        {
            c += 1
            tempd[tarr[i]] = tempd[ascarr[i]]
            tarr.swapAt(i, tempd[tarr[i]]!)
        }
    }
    return min(minimum, c)
 }
