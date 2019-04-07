import UIKit

/*
 #2 FizzBuzz
 The FizzBuzz challenge goes something like this. Write a function that does the following:
 console logs the numbers from 1 to n, where n is the integer the function takes as its parameter
   * logs fizz instead of the number for multiples of 3
   * logs buzz instead of the number for multiples of 5
   * logs fizzbuzz for numbers that are multiples of both 3 and 5
*/

func fizzBuzz(_ input: Int) {
  for num in 1...input {
    if (num.isMultiple(of: 15)) {
      print("fizzbuzz")
    } else if (num.isMultiple(of: 3)) {
      print("fizz")
    } else if (num.isMultiple(of: 5)) {
      print("buzz")
    } else {
      print(num)
    }
  }
}

// test
fizzBuzz(45);
