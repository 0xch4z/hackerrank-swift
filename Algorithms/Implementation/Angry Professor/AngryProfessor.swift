import Foundation
//https://www.hackerrank.com/challenges/angry-professor/
//LOGIC : Just filter the students who came late using filter fn

func angryProfessor(k: Int, a: [Int]) -> String {
let num = a.filter {$0 <= 0}.count
if(num >= k)
{
    return "NO"
}
else
{
    return "YES"
}

}
