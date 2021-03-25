import Foundation
import Darwin
//https://www.hackerrank.com/challenges/matrix-rotation-algo/
// LOGIC : Here , instead of allocating more memory space for another matrix and assigning values to it, we can simply calculate the coordinate of the
// given point after rotation, as done in mapper function below. note that the Solution provided below , while does pass all cases, is quite inefficient since every point is to be calculated, and this results in the mapper functions's while loop being used over and over again. one could improve on this by saving the first result and iterating through the others, but then again that would need some space and that makes the program lengthy and more difficult to understand than it already is
 func matrixRotation(matrix: [[Int]], r: Int) -> Void {
 var layerDict = [Int:Int]() // this dict stores the number of elements in the layer of the matrix
  let rotations = r //rotations
  let rows = matrix.count - 1
  let cols = matrix[0].count - 1
  func mapper(_ x:Int,_ y:Int,position:Int)
 {
    let elementsInLayer = layerDict.keys.contains(position) ? layerDict[position]! : (2 * (rows + 1 - 2 * position)) + (2 * (cols + 1 - 2 - 2 * position))
    if !layerDict.keys.contains(position) {layerDict[position] = elementsInLayer}
    var xx = x,yy = y
    var i = elementsInLayer <= rotations ? rotations % elementsInLayer : rotations
     func topAndRight(zz: inout Int, axis : Int)
    {
     let temp = zz
     zz  = zz + i ;
     if zz > axis - position
    {
        i = zz - axis + position
        zz = axis - position
    }
    else
    {
        i -= zz - temp} ;
    }
    func bottomAndLeft(zz : inout Int)
    {
        let temp = zz
        zz  = zz - i
        if zz < position
        {
          i = abs(position - zz) ;
          zz = position
        } else
        {
            i -= temp - zz
        }
    }

      while i != 0 {
            if xx == rows - position
            {
                bottomAndLeft(zz: &yy)
                if i == 0 {break}
                

           }
          if xx == position
        {
            topAndRight(zz: &yy, axis: cols)
            if i == 0 {break}
        }

         if  yy == cols - position
        {
            topAndRight(zz: &xx, axis: rows)
            if i == 0 {break}
        }

         if yy == position
        {
            bottomAndLeft(zz: &xx)
            if i == 0 {break}
        }
    }
     
    y == cols  ? print("\(matrix[xx][yy])", terminator: "\n" ) : print("\(matrix[xx][yy])", terminator: " " )

 }
   for i in 0 ..< matrix.count
 {
      for j in 0 ..< matrix[0].count
     {
          let pos = min(matrix.count - 1 - i , matrix[0].count - 1 - j , i, j)
         mapper(i, j, position: pos)
     }
  }

 }


 
