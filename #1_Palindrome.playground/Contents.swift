import UIKit

/*
 #1 Palindrome
 A palindrome is a word, sentence or other type of character sequence which reads the same backward as forward.
 For example, “racecar” and “Anna” are palindromes. “Table” and “John” aren’t palindromes, because they don’t read
 the same from left to right and from right to left.
*/

func isPalindrome(_ input: String) -> Bool {
  let prettyInput = input.lowercased().replacingOccurrences(of: " ", with: "")

  return prettyInput == String(prettyInput.reversed())
}

// test
let testData: [String] = [
  "Test",                 // -
  "Anna",                 // +
  "Top spot",             // +
  "character",            // -
  "Eve",                  // +
  "Step on no pets",      // +
  "Right",                // -
  "The word palindrome",  // -
  "My gym"                // +
];

for str in testData {
  print(isPalindrome(str))
}
