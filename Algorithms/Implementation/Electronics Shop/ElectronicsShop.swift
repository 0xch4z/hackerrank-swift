import Foundation
//https://www.hackerrank.com/challenges/electronics-shop
func getMoneySpent(keyboards: [Int], drives: [Int], b: Int) -> Int {
    var buyable = -1
  for i in keyboards
  {
      for j in drives
      {
          if (((i + j) >= buyable) && ((i + j) <= b))
          {
              buyable = i + j
          }
      }
  }
  return buyable
}
