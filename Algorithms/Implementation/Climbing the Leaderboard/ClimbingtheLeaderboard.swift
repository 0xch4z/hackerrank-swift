import Foundation
//https://www.hackerrank.com/challenges/climbing-the-leaderboard/
func climbingLeaderboard(scores: [Int], alice: [Int]) -> [Int] {
  var result :[Int] = []
  let setScores = Set(scores).sorted(by: >)
  var l = setScores.count
 for i in alice
{
         while (l>0) && (i >= setScores[l-1])
            {l -= 1}
        result.append(l+1)
}
 
return result
}
