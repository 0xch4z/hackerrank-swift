import Foundation
//https://www.hackerrank.com/challenges/designer-pdf-viewer/
func designerPdfViewer(h: [Int], word: String) -> Int {
let a = Array(word)
var height = 0
for i in a
{
    let aa = Int("\(i.asciiValue!  - 97)")!
    if(height < h[aa]) {height = h[aa]}
}
return (a.count * height)

}
