import Foundation
//https://www.hackerrank.com/challenges/counting-valleys
func altitudeFunction(_ altituce:Int,_ s:Character) -> Int
{ var tempAltitude = altituce
  if(s == "D")
  {tempAltitude -= 1}
  else
  {
      tempAltitude += 1
  }
return tempAltitude
}
func countingValleys(n: Int, s: String) -> Int {
//if gary changes altitude and then returns to zero then he has gone through one valley
let a = Array(s)
var altitude = 0
var valleys = 0
 
for i in a
{
    if (altitude == 0) {altitude = altitudeFunction(altitude,i)}
    else
    {
        if (altitude < 0) { altitude = altitudeFunction(altitude,i)
        if (altitude == 0){ valleys += 1}}
        else
        {
           altitude =  altitudeFunction(altitude,i)
        }
        
    }
}
return valleys
 

}
