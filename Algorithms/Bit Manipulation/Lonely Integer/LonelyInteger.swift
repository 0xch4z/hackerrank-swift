import Foundation

let _ = readLine()!
let ints = readLine()!.components(separatedBy: " ").map{Int($0)!}

for int in ints {
    if (ints.filter{$0==int}).count == 1 {
        print(int)
    }
}
