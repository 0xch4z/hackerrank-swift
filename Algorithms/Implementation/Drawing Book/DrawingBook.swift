import Foundation
//https://www.hackerrank.com/challenges/drawing-book/
func pageCount(n: Int, p: Int) -> Int {
// logic : the minimum number of pages will be equal to the minimum number of turns of either from the start or from the end.
return min(Int(p/2),Int(abs(n/2 - p/2)))
}

