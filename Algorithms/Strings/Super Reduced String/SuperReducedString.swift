 import Foundation
 //https://www.hackerrank.com/challenges/reduced-string/
 //Logic: Just use 2 stacks. in the first stack input the string.Then character by character put one element of the stack into the other.Compare the tops of the stacks and discard them if equal. then reverse the 2nd stack to get the answer.
 var str = Array(readLine()!)
 var newString :[Character] = []
 newString.append(str.removeLast())
 while !str.isEmpty
 {
    if !newString.isEmpty && str.last == newString.last
    {
        newString.removeLast()
        str.removeLast()
    }
    else
    {
        newString.append(str.removeLast())
    }
 }
 print(newString.isEmpty ? "Empty String": String(newString.reversed()))
