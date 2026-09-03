import Foundation
//https://www.hackerrank.com/challenges/cats-and-a-mouse/
func catAndMouse(x: Int, y: Int, z: Int) -> String {
if (abs(x - z) > abs(y - z))
{
return ("Cat B")
}
else
{
if (abs(x - z) < abs(y - z))
{
return ("Cat A")
}
else
{
    return ("Mouse C")
}}



}
