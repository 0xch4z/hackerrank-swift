import Foundation

let op = readLine()!.components(separatedBy: " ").map{ Int($0)! } // n = op[0] k = op[1]
let a = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let tCharged = Int(readLine()!)!

let tActual = ((a.reduce(0,+) - a[op[1]]) / 2)
if tCharged == tActual {
    print("Bon Appetit")
} else {
    print(abs(tActual - tCharged))
}
