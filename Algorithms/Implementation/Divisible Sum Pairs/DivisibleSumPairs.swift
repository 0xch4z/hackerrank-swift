import Foundation;

let op = readLine()!.components(separatedBy: " ").map{ Int($0)! } // n = op[0], j = op[1]
let a = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let k = op[1]

var counter = 0
for i in 0...a.count - 1 {
    for j in 0...a.count - 1 {
        if (a[i] < a[j]) {
            if (a[i] < a[j]) && ((a[i] + a[j]) % k == 0) {
                counter += 1
            }
        }
    }
}

print(counter)
