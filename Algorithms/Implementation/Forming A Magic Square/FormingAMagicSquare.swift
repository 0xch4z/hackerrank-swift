import Foundation
//https://www.hackerrank.com/challenges/magic-square-forming/
//Logic: This question is Near impossible without having some prior knowledge of a magic square. we use pre here to
// keep track of the possible values of the magic square. then we compare the possible changes.
func check(_ arr:[[Int]]) -> [Int]
{ let pre = [
[[8, 1, 6], [3, 5, 7], [4, 9, 2]],
[[6, 1, 8], [7, 5, 3], [2, 9, 4]],
[[4, 9, 2], [3, 5, 7], [8, 1, 6]],
[[2, 9, 4], [7, 5, 3], [6, 1, 8]],
[[8, 3, 4], [1, 5, 9], [6, 7, 2]],
[[4, 3, 8], [9, 5, 1], [2, 7, 6]],
[[6, 7, 2], [1, 5, 9], [8, 3, 4]],
[[2, 7, 6], [9, 5, 1], [4, 3, 8]],
]
    var moves:[Int] = []
    var sum = 0
    for i in pre {
        sum = 0
        for j in 0...(arr.count - 1)
        {
            for k in 0...(arr.count - 1)
            {
                if(i[j][k] != arr[j][k])
                {
                 sum  += abs(arr[j][k] - i[j][k])
                }
            }
        }
        moves.append(sum)
    }
    return moves
}
func formingMagicSquare(s: [[Int]]) -> Int {
 // magic number is 15
    return check(s).min()!
}
