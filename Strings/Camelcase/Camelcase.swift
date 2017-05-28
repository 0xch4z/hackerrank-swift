import Foundation

let s = readLine()!

// String method, checks if uppercased at index
fileprivate extension String {
    func isUppercased(at: Index) -> Bool {
        let range = at..<self.index(after: at)
        return self.rangeOfCharacter(from: .uppercaseLetters, options: [], range: range) != nil
    }
}

// Character method, evaluates if char isUppercased at index
fileprivate extension Character {
    var isUppercase: Bool {
      let str = String(self)
      return str.isUppercased(at: str.startIndex)
    }
}

// Iterate over chars and count for uppercased
var counter = 1
let upperS = s.characters.filter({ $0.isUppercase })
for char in s.characters {
    if char.isUppercase {
        counter += 1
    }
}

print(counter)
