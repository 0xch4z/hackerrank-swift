import Foundation

// Get input
let quantity = (Int(readLine()!)!)
var grades = [Int]()
for _ in 1...quantity {
    grades.append(Int(readLine()!)!)
}

// MARK: - Rounding Function
func roundGrade(_ grade: Int) -> Int {
    var grade = grade
    let diff = grade % 5
    if diff >= 3 && grade >= 38 {
        grade += 5 - diff
    }
    return grade
}

// Output rounded grades
for grade in grades {
    print(roundGrade(grade))
}
