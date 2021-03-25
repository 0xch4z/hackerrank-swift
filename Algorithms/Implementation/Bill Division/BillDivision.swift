import Foundation
//https://www.hackerrank.com/challenges/bon-appetit/ Complete the bonAppetit function below.
// sumofarray adds all the integers in arr which are not equal to k
func sumOfArray(_ arr:[Int],_ k:Int) -> Int {
    // Hint : you can do this using the .reduce function. try it out!
    var sum = 0
    for i in 0...(arr.count - 1 )
    {
        if (i != (k))
        {
            sum += arr[i]
        }
    }
 return sum
}
func bonAppetit(bill: [Int], k: Int, b: Int) -> Void {
    let bb = sumOfArray(bill,k) / 2
    if ( bb == b)
    {
        print("Bon Appetit")
    }
    else
    {
        print(abs(bb - b))
    }

 }

