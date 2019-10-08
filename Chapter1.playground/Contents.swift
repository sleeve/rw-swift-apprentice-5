/**
 * Copyright (c) 2019 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
 * distribute, sublicense, create a derivative work, and/or sell copies of the
 * Software in any work that is designed, intended, or marketed for pedagogical or
 * instructional purposes related to programming, coding, application development,
 * or information technology.  Permission for such use, copying, modification,
 * merger, publication, distribution, sublicensing, creation of derivative works,
 * or sale is expressly withheld.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import Foundation

// This is a comment. It is not executed.

// This is also a comment.
// Over multiple lines.

/* This is also a comment.
   Over many..
   many...
   many lines. */

/* This is a comment.
 
 /* And inside it
 is
 another comment.
 */
 
 Back to the first.
 */

// Print string to debug area/console.
print("Hello, Swift Apprentice reader!")

// Simple expressions using operators.
2 + 6
10 - 2
2 * 4
24 / 3

// Removing the whitespace is an all or nothing, you can’t mix styles.
2+6   // OK
2 + 6 // OK
//2 +6  // ERROR
//2+ 6  // ERROR

// Decimal numbers
22 / 7 // Result is only a whole number/integer, not a decimal.
22.0 / 7.0 // Result will now be a floating point number/decimal.

// Remainder operator
28 % 10
(28.0).truncatingRemainder(dividingBy: 10.0) // same result using decimal numbers.

// Shift operators
1 << 3
32 >> 2

// Order of operations, operation precedence
((8000 / (5 * 10)) - 32) >> (29 % 5)
350 / 5 + 2
350 / (5 + 2)

// Math functions
sin(45 * Double.pi / 180) // 0.7071067811865475
cos(135 * Double.pi / 180) // -0.7071067811865475
(2.0).squareRoot() // 1.414213562373095
max(5, 10) // 10
min(-5, -10) // -10
max((2.0).squareRoot(), Double.pi / 2) // 1.570796326794897

// Naming data
// Constants
let number: Int = 10
let pi: Double = 3.14159
//number = 0 // Causes an error because we can't change a constant once it has been declared.

// Variables
var variableNumber: Int = 42
variableNumber = 0
variableNumber = 1_000_000
var 🐶💩: Int = -1

// Increment and decrement
var counter: Int = 0
counter += 1
counter -= 1
// the above is shorthand for
//var counter: Int = 0
//counter = counter + 1
//counter = counter - 1
counter = 10
counter *= 3 // same as counter = counter * 3
counter /= 2 // same as counter = counter / 2

// Mini-exercises
let myAge: Int = 39
var averageAge: Double = 39
averageAge = (averageAge + 30) / 2
let testNumber: Int = 89897
let evenOdd = testNumber % 2 // result is 1 for odd testNumbers and 0 for evens
var answer: Int = 0
answer += 1
answer += 10
answer *= 10
answer >>= 3
answer // answer is 13
