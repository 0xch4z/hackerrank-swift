 import Foundation
 //https://www.hackerrank.com/challenges/flatland-space-stations
 //Logic: Just find the maximum difference between each station. the middle of the locations will be the max.
 
 func flatlandSpaceStations(n: Int, c: [Int]) -> Int {
 var maxx = -1
    let arr = c.sorted()
    maxx = max(maxx, arr.first!)
    for i in 0 ..< c.count - 1
    {
        maxx = max(maxx, (abs(arr[i + 1] - arr[i]) / 2))
    }
    maxx = max(maxx, (abs(n - 1 - arr.last!)))
     return maxx
 }
