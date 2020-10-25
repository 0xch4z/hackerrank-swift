import Foundation
//Constructing a Number : -https://www.hackerrank.com/challenges/points-on-a-line
// idea: We know that for a line to be horizontal, all of its y coordinates must be equal , and for a line to be vertical, all of its x coordinates must be equal.
/// While taking the input of the coordinates we run a check to see if the x or y coordinates are consitent
/// if both of them are inconsistent then we get false. otherwise we get true.
import Foundation
let n = Int(readLine()!)!
var x :[Int] = []
var y :[Int] = []
var xflag = true
var yflag = true
for _ in 1 ... n
{
    let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    if !x.isEmpty {
        if x[0] != input[0] {xflag = false}
        if y[0] != input[1] {yflag = false}
    }
    x.append(input[0])
    y.append(input[1])
}
 
if xflag || yflag
{
    print("YES")
}
else
{
    print("NO")
}
