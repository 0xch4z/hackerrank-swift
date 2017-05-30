let n = Int(readLine()!)!
var arr = [String]()
for _ in 1...n {
    arr.append(readLine()!)
}

let query = "hackerrank"

// MARK: Query String Function
func queryString(_ string: String, for query: String) -> Bool {
    var query = Array(query.characters)
    let string = Array(string.characters)
    for char in string {
        if query[0] == char && query.count == 1 {
            return true
        } else if query[0] == char {
            query.removeFirst()
        }
    }
    return false
}


for str in arr {
    if (queryString(str, for: query)) {
        print("YES")
    } else {
        print("NO")
    }
}
