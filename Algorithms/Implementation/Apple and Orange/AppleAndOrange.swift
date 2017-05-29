import Foundation;

// MARK: - Tree Object
struct Tree {
    let position: Int
    var droppingPositions = [Int]()
    init(position: Int, arrayOfDeltas: [Int]) {
        self.position = position
        for delta in arrayOfDeltas {
            droppingPositions.append(position + delta)
        }
    }
    // Returns number of droppings in a given range
    func quantityInRange(_ range: ClosedRange<Int>) -> Int {
        var counter = 0
        for position in droppingPositions {
            if range.contains(position) {
                counter += 1
            }
        }
        return counter
    }
}

// Get Input Values
let housePoints = (readLine()!.components(separatedBy: " ").map{ Int($0)! })
let treePositions = (readLine()!.components(separatedBy: " ").map{ Int($0)! }) // a = [0]; b = [1]
_ = (readLine()!.components(separatedBy: " ").map{ Int($0)! }) // m = [0]; n = [0]
let appleDeltas = (readLine()!.components(separatedBy: " ").map{ Int($0)! }) // delta (d) of apples (a) * (m)
let orangeDeltas = (readLine()!.components(separatedBy: " ").map{ Int($0)! }) // delta (d) of oranges (b) * (m)

// Initialize Tree Objects
let appleTree = Tree(position: treePositions[0], arrayOfDeltas: appleDeltas)
let orangeTree = Tree(position: treePositions[1], arrayOfDeltas: orangeDeltas)

// Call quantity in range methods with house points
print(appleTree.quantityInRange(housePoints[0]...housePoints[1]))
print(orangeTree.quantityInRange(housePoints[0]...housePoints[1]))
