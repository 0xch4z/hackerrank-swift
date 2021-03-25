 import Foundation
//https://www.hackerrank.com/challenges/day-of-the-programmer/
 //Logic: just use normal Leap year checking to solve and use gregorian/ 1917 part also
 func dayOfProgrammer(year: Int) -> String {

 var days = 28
 // if it is leap
 if ( ((year <= 1917) && (year % 4 == 0))  || ( (year > 1917) && (( (year % 4 == 0) && !(year % 100 == 0)) || (year % 400 == 0)  )) ) {
     days = 29
 }
 let days = 256 - (31 + days + 31 + 30 + 31 + 30 + 31 + 31)
 if(year == 1918)
 {
     return( String(format : "%d.09.%d",days + 13,year))
 }
  if ((days == 29))
 {
      return (String(format: "%d.09.%d",days,year))
 }
 else
 {
  return (String(format: "%d.09.%d",days,year))

 }

 }
