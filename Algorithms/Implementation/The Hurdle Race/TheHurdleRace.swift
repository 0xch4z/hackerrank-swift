import Foundation
//https://www.hackerrank.com/challenges/the-hurdle-race
func hurdleRace(k: Int, height: [Int]) -> Int {
if(height.max()! <= k) {return 0}
else
{
    return (height.max()! - k)
}
}
