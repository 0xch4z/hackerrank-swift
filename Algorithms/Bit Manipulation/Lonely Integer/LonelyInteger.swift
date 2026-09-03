import Foundation

let _ = readLine()!
let ints = readLine()!.components(separatedBy: " ").map{Int($0)!}
// note that the below method works , and is a very good implementation of filter function in swift, but it is time and memory intensive.
for int in ints {
    if (ints.filter{$0==int}).count == 1 {
        print(int)
    }
}

///LOGIC: use xor: xor is logical addition.We denote it by ^.
/// Note that a ^ (any number except a) != 0 and a ^ a = 0
var unique = 0
for i in ints
{
    unique ^= i
    // every repetition will be removed by xor
}
print(unique)
