import Foundation
//https://www.hackerrank.com/challenges/s10-basic-statistics/
/// This question is rather straightforward, the following program just tries to utilise the dictionary in swift and its functions for illustration
let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map{ Int(String($0))! }.sorted()
let mean = String(format : "%.1f",(Double(input.reduce(0,{$0 + $1}))) / Double(n))
let median = String(format:"%.1f",Double(input[n / 2 - 1] + input [n / 2]) / 2)
// here, we use the reduce function to generate a dictionary which maps the values of the input to that of its frequency
let dict = input.reduce(into:[:],{$0[$1,default:0] += 1})
// then, we find the maximum frequency, using the max function
let (_,maxfreq) = dict.max(by: {$0.1 < $1.1})!
let filter = dict.filter({$0.1 == maxfreq})
// although the max frequency denotes the mode, according to question, if multiple of max frequency exist we must use the minimum value for that frequency.
let (modevalue,_) = filter.min(by: {$0.0 <= $1.0})!
print(mean)
print(median)
print(modevalue)
