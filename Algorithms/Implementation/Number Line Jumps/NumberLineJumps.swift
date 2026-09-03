 import Foundation
//https://www.hackerrank.com/challenges/kangaroo
 // Complete the kangaroo function below.
 // Logic : just compare the values and try to solve it as if it were a physics question based on velocity and distance
 func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
 if(((x1>x2)&&(v1 >= v2)) || ((x2>x1)&&(v2 >= v1)))
 {return ("NO")}
 else
   { if (((x1 - x2) % (v1 - v2)) == 0)
     
 {
     return ("YES")
 }
 else
  {
      return ("NO")
  }
 }}
 let arr = readLine()!.split(separator: " ").map{ Int(String($0))! }
 print(kangaroo(x1:arr[0],v1:arr[1],x2:arr[2],v2:arr[3]))
