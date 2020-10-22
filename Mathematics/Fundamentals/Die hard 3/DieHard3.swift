import Foundation

// Complete the solve function below.
func gcd(_ a : Int,_ b : Int) -> Int
{
    if b == 0 {return a}
    return gcd(b, a % b)
}

// If the number to be obtained is divisible by the gcd then we can get the volume. that is the idea portrayed here.

func solve(a: Int, b: Int, c: Int) -> String {
if a == c || b == c {return "YES"}
if c > max(a,b) {return "NO"}
    if c % gcd(max(a,b),min(a,b)) == 0 {return "YES"}
return "NO"
}
 

 
