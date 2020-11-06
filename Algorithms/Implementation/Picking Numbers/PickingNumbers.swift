import Foundation
//https://www.hackerrank.com/challenges/picking-numbers/
func pickingNumbers(a: [Int]) -> Int {
    // Write your code here
 var ar = 0
let filteredArr = Set(a)
for i in filteredArr
{
    let b = a.filter {(($0 - i) == 1) ||  $0 == i}
    ar = (ar > b.count) ? ar:b.count
}
return ar
}
