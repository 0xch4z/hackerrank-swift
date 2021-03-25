 import Foundation
//https://www.hackerrank.com/challenges/between-two-sets/problem
 // Logic : Given first 2 functions show give the gcd and hcf of any 2 numbers. using these 2 functions we can solve the question
 func hcf(_ num1: Int,_ num2: Int) -> Int {
     var numA = num1
     var numB = num2
     while numA != 0 && numB != 0 {
         if numA >= numB {
             numA %= numB
         } else {
             numB %= numA
         }
     }
     return max(numA, numB)
 }
 func gcd(_ arr : [Int]) -> Int
 {
     var res = arr[0]
     for ele in arr
     {
         res = hcf(ele,res)
     }
     return res
 }
 func mul(_ arr:[Int]) -> Int
 {
 var mule = 1
     for ele in arr
     { mule = mule * ele / hcf(mule, ele)
     }
     return mule
 }
  
 func getTotalX(a: [Int], b: [Int]) -> Int {
   let gc = gcd(b)
   let lc = mul(a)
   var i = lc
   var bro = 0
   while(i <= gc)
   {
     if(gc % i == 0)
     {bro += 1}
         i += lc

   }
 return bro
 }
