import UIKit

/*
 #5 Fibonacci
 This article couldn’t be complete without a discussion of the Fibonacci challenge,
 a classic question you’ll surely come across during a job interview or coding practice.
 A Fibonacci sequence is an ordering of numbers where each number is the sum of the preceding two.
 For example, the first ten numbers of the Fibonacci sequence are: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34.
 
 Also see https://medium.com/swlh/fibonacci-swift-playground-f56d1ff3ea99
*/

func fibonacci(_ input: Int) -> Int {
  var a = 1
  var b = 1
  guard input > 1 else {
    return a
  }
  
  (2...input).forEach { _ in
    (a, b) = (a + b, a)
  }
  
  return a
}

// test
print(fibonacci(7))
