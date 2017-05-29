import Foundation;

// Get Input
let N = Int(readLine()!)!
var strings = [String]()
for _ in 1...N {
    strings.append(readLine()!)
}
let Q = Int(readLine()!)!
var queries = [String]()
for _ in 1...Q {
    queries.append(readLine()!)
}

// MARK: - String Query Function
func makeStringQuery(_ query: String, strings: [String]) -> Int {
    var counter = 0
    for string in strings {
        if string == query {
            counter += 1
        }
    }
    return counter
}

// Make Queries
for query in queries {
    print(makeStringQuery(query, strings: strings))
}
