import Foundation
//https://www.hackerrank.com/challenges/utopian-tree/
// Complete the utopianTree function below.
func utopianTree(n: Int) -> Int {
//give the height after n cycles
if (n == 0) {return 1 }
else
{
    var height = 1
    for i in 1...n
    {
        if(i % 2 == 0)
        {
            height += 1
        }
        else
        {
            height *= 2
        }
    }
    return height
}

}
