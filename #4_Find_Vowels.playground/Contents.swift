import UIKit
/*
 #4 Find the Vowels
 This is probably one of the less challenging challenges (no pun intended) — in terms of difficulty —
 but that doesn’t detract from the fact that you could come across it during a job interview. It goes like this.
*/

func findVowels(_ input: String) -> Int {
  let regex = try! NSRegularExpression(pattern: "[aeiou]", options: [.caseInsensitive])
  
  return regex.matches(in: input, options: [], range: NSRange(location: 0, length: input.count)).count
}

// test
let testData: [String] = [
  "Test",                  // 1
  "Anna",                  // 2
  "Top spot",              // 2
  "character",             // 3
  "Eve",                  // 2
  "Step on no pets",       // 4
  "Right",                // 1
  "The word palindrome",   // 6
  "Qqqqqq"                // 0
];

for str in testData {
  print(findVowels(str))
}
