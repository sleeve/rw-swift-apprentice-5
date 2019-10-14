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

// Chapter 3: Basic Control Flow

// Comparison operators
let yes: Bool = true
let no: Bool = false

let yes2 = true
let no2 = false

// Boolean operators
let doesOneEqualTwo = (1 == 2)
let doesOneNotEqualTwo = (1 != 2)
let alsoTrue = !(1 == 2)
let isOneGreaterThanTwo = (1 > 2)
let isOneLessThanTwo = (1 < 2)
let and = true && true
let or = true || false
let andTrue = 1 < 2 && 4 > 3
let andFalse = 1 < 2 && 3 > 4
let orTrue = 1 < 2 || 3 > 4
let orFalse = 1 == 2 || 3 == 4
let andOr = (1 < 2 && 3 > 4) || 1 < 4

// String equality
let guess = "dog"
let dogEqualsCat = guess == "cat"
let order = "cat" < "dog"

// Toggling a Bool
var switchState = true
switchState.toggle() // switchState = false
switchState.toggle() // switchState = true

// Mini-exercises
// Exercise 1
let myAge: Int = 31
let isTeenager: Bool = myAge >= 13 && myAge <= 19

// Exercise 2
let theirAge: Int = 30
let bothTeenagers: Bool = theirAge >= 13 && theirAge <= 19 && isTeenager

// Exercise 3
let reader: String = "Steve Morris"
let author: String = "Matt Galloway"
let authorIsReader: Bool = reader == author

// Exercise 4
let readerBeforeAuthor: Bool = reader < author

// The if statement
if 2 > 1 {
    print("Yes, 2 is greater than 1.")
}

let animal = "Fox"
if animal == "Cat" || animal == "Dog" {
    print("Animal is a house pet.")
} else {
    print("Animal is not a house pet.")
}

let hourOfDay = 12
var timeOfDay = ""
if hourOfDay < 6 {
    timeOfDay = "Early morning"
} else if hourOfDay < 12 {
    timeOfDay = "Morning"
} else if hourOfDay < 17 {
    timeOfDay = "Afternoon"
} else if hourOfDay < 20 {
    timeOfDay = "Evening"
} else if hourOfDay < 24 {
    timeOfDay = "Late evening"
} else {
    timeOfDay = "INVALID HOUR!"
}
print(timeOfDay)

// Short circuiting
let name: String = "Steve Morris"

if 1 > 2 && name == "Matt Galloway" {
    // ...
}

if 1 < 2 || name == "Matt Galloway" {
    // ...
}

// Encapsulating variables
var hoursWorked = 45
var price = 0
if hoursWorked > 40 {
    let hoursOver40 = hoursWorked - 40
    price += hoursOver40 * 50
    hoursWorked -= hoursOver40
}
price += hoursWorked * 25
print(price)
//print(hoursOver40) // constant is declared within the if statement so it can't be accessed outside of its scope

// The ternary conditional operator
let a = 5
let b = 10

let min: Int
if a < b {
    min = a
} else {
    min = b
}

let max: Int
if a > b {
    max = a
} else {
    max = b
}
// (<CONDITION>) ? <TRUE VALUE> : <FALSE VALUE>
let c = 5
let d = 10
let min2 = c < d ? a : b
let max2 = c > d ? a : b

// Mini-exercises
// Exercise 1
let myAge2: Int = 18
if myAge2 >= 13 && myAge2 <= 19 {
    print("Teenager")
} else {
    print("Not a teenager")
}

// Exercise 2
let answer = myAge2 >= 13 && myAge2 <= 19 ? "Teenager" : "Not a teenager"
print(answer)

// While loops
var sum = 1
while sum < 1000 {
    sum = sum + (sum + 1)
}
print(sum)

// Repeat-while loops
sum = 1
repeat {
    sum = sum + (sum + 1)
} while sum < 1000
print(sum)

sum = 1
while sum < 1 { // the condition is already false so the body won't run
    sum = sum + (sum + 1)
}
print(sum)

sum = 1
repeat {
    sum = sum + (sum + 1)
} while sum < 1 // the loop will execute once so sum should be 3
print(sum)

// Breaking out of a loop
sum = 1
while true {
    sum = sum + (sum + 1)
    if sum >= 1000 {
        break
    }
}
print(sum)

// Mini-exercises
// Exercise 1
var counter = 0
while counter < 10 {
    print("counter is \(counter)")
    counter += 1
}
print(counter)

// Exercise 2
counter = 0
var roll = 0
repeat {
    roll = Int.random(in: 0...5)
    counter += 1
    print("After \(counter) rolls, roll is \(roll)")
} while roll != 0

// Challenges
// Challenge 1: Find the error
let firstName = "Matt"
if firstName == "Matt" {
    let lastName = "Galloway"
} else if firstName == "Ray" {
    let lastName = "Wenderlich"
}
//let fullName = firstName + " " + lastName // can't reference lastName as it was created in the if loop scope

// Challenge 2: Boolean challenge
let answer1 = true && true // answer1 = true
let answer2 = false || false // answer2 = false
let answer3 = (true && 1 != 2) || (4 > 3 && 100 < 1) // answer3 = true
let answer4 = ((10 / 2) > 3) && ((10 % 2) == 0) //answer4 = true

// Challenge 3: Snakes and ladders
let currentPosition = 1
let diceRoll = 5
var nextPosition = currentPosition + diceRoll
if nextPosition == 3 {
    nextPosition = 15
} else if nextPosition == 7 {
    nextPosition = 12
} else if nextPosition == 11 {
    nextPosition = 2
} else if nextPosition == 17 {
    nextPosition = 9
}
print(nextPosition)

// Challenge 4: Number of days in a month
let month: String = "October"
let year: Int = 2019
var numberOfDays: Int
if month == "January"

