import Foundation

// Get input
let s = readLine()!

// MARK: - String Method isPangram
fileprivate extension String {
    var isPangram: Bool {
        let chars = Array(self.lowercased().characters)
            for i in 97...122 {
            if !(chars.contains(Character(UnicodeScalar(i)!))) {
                return false
            }
        }
        return true
    }
}

// Validate Pangram
if (s.isPangram) {
    print ("pangram")
} else {
    print ("not pangram")
}
