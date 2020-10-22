import Foundation

// Complete the solve function below.
// Below is a function used to calculate the gcd. we use the Euclidean method here. refer this link given below to learn more:
// https://www.khanacademy.org/computing/computer-science/cryptography/modarithmetic/a/the-euclidean-algorithm
func gcd(_ a : Int,_ b : Int) -> Int
{
    if b == 0 {return a}
    return gcd(b, a % b)
}

// The idea here is that given 2 containers, if we know its gcd, then we can find out what other values of liquid the containers can hold.
// if the required value is divisible by the gcd, then it is probably obtainable, but we still need to check that the required value is lesser than the 
// bigger of a and b

func solve(a: Int, b: Int, c: Int) -> String {
if a == c || b == c {return "YES"}
if c > max(a,b) {return "NO"}
    if c % gcd(max(a,b),min(a,b)) == 0 {return "YES"}
return "NO"
}
 

 
