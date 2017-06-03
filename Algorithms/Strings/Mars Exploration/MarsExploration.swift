let s = readLine()!

fileprivate extension String {

    // MARK: - Triplets Property
    // Returns 3 char arrays modeling a given string
    var triplets: [String] {
        var result: [String] = []
        let characters = Array(self.characters)
        stride(from: 0, to: characters.count, by: 3).forEach {
            result.append(String(characters[$0..<min($0+3, characters.count)]))
        }
        return result
    }

    // MARK: - Character at Index method
    // Returns character at given string index
    func charAtIndex(_ i: Int) -> Character {
        return Array(self.characters)[i]
    }
}

var count = 0

for triplet in s.triplets {
    switch(triplet) {
    case "SOS" :
        continue
    default :
        if triplet.charAtIndex(0) != "S" {
            count += 1
        }
        if triplet.charAtIndex(1) != "O" {
            count += 1
        }
        if triplet.charAtIndex(2) != "S" {
            count += 1
        }
    }
}

print(count)
