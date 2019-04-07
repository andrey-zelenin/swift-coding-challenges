import UIKit
/*
 #3 Anagram
 A word is an anagram of another word if both use the same letters in the same quantity, but arranged differently
*/

func buildCharObject(_ input: String) -> [Character: Int] {
  var charObj = [Character: Int]();
  for char in input.lowercased().replacingOccurrences(of: " ", with: "") {
    // if the object has already a key value pair
    // equal to the value being looped over,
    // increase the value by 1, otherwise add
    // the letter being looped over as key and 1 as its value
    if let cnt = charObj[char] {
      charObj[char] = cnt + 1
    } else {
      charObj[char] = 1
    }
  }
  
  return charObj
}

func isAnagram(_ strA: String, _ strB: String) -> Bool {
  let aCharObject = buildCharObject(strA)
  let bCharObject = buildCharObject(strB)
  
  // compare number of keys in the two objects
  // (anagrams must have the same number of letters)
  if (aCharObject.count != bCharObject.count) {
    return false
  }
  
  // if both objects have the same number of keys
  // we can be sure that at least both strings
  // have the same number of characters
  // Now we can compare the two objects to see if both
  // have the same letters in the same amount
  for (char, cnt) in aCharObject {
    if (cnt != bCharObject[char]) {
      return false
    }
  }
  
  // if both the above checks succeed,
  // you have an anagram: return true
  return true
}

// test
let testData = [
  ["Tar", "Rat"],           // +
  ["Night", "Thing"],       // +
  ["War", "Warning"],       // -
  ["Dusty", "Study"],       // +
  ["Milk", "Kilt"],         // -
  ["Vase", "Save"],         // +
  ["Stressed", "Desserts"], // +
  ["Elbow", "Below"]        // +
];

for item in testData {
  print(isAnagram(item[0], item[1]))
}
