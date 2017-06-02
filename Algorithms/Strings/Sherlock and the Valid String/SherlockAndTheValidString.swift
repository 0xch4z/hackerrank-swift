let s = readLine()! // s = given string

fileprivate extension String {

	// MARK: Occurances Method | ⇒ O(n)
	// Returns indicies of a given character (c)
	func occurances(_ c: Character) -> Int {
		var count = 0
		let chars = Array(self.characters)
		for char in chars {
			if char == c {
				count += 1
			}
		}
		return count
	}

	// MARK: Unique Chars Property | ⇒ O(n)
	// Returns unique characters in a given string
	var uniqueCharacters: [Character] {
		var uniqueChars = [Character]()
		let chars = Array(self.characters)
		for char in chars {
			if !uniqueChars.contains(char) {
			    uniqueChars.append(char)
			}
		}
		return uniqueChars
	}
}

// exceptionMade serve a purpose in the monitoring of times frequency found invalid (limit 1)
var exceptionMade = false

// make dictionary of unique characters and their occurances in string 's'
let chars = s.uniqueCharacters.map{($0, s.occurances($0))} // [i].0 : char, [i].1 : occurances
let freq = chars[0].1 // frequency to compare to other elements

// iterate over characters
evaluation: for (index, char) in chars.enumerated() {
    let cFreq = char.1
    if !(exceptionMade) {
        switch(cFreq) {
        case freq:
        // frequency is correct
            break
        case freq + 1:
            exceptionMade = true
            break
        // frequency is over by one
        default:
            if cFreq == 1 {
            // one odd out character
                exceptionMade = true
                break
            } else {
            // frequency is incorrect
                print("NO")
                break evaluation
            }
        }
    } else if (exceptionMade) {
        switch(cFreq) {
        case freq:
        // frequency is correct
            break
        default:
        // frequency is incorrect
            print("NO")
            break evaluation
        }
    }
    if (index == chars.count - 1) {
    // frequency was correct, last char in loop
        print("YES")
    }
}
