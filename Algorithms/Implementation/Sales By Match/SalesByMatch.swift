import Foundation
//https://www.hackerrank.com/challenges/sock-merchant/
 
let n = Int(readLine()!)!
var socks = readLine()!.split(separator: " ").map{ Int(String($0))! }
var pairs = 0
// in  every iteration we are removing the socks which are identical.
while !(socks.isEmpty)
{  let bro = socks[0]
    let repeatedSock = socks.filter() {$0 == bro}
    if (repeatedSock.count % 2 == 0)
    {
        pairs += (repeatedSock.count / 2)
    }
    else
    {
        pairs += (repeatedSock.count / 2)
    }
    socks.removeAll() {$0 == bro}
}
print(pairs)
