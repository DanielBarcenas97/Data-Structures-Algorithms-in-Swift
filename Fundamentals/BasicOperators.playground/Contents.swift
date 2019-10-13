import UIKit


/*Basic Operators*/

//An operator is a special symbol or phrase that you use to check, change, or combine values.

/*

 Operators are unary, binary, or ternary:
 
    Unary operators operate on a single target (such as -a). Unary prefix operators appear immediately before their target (such as !b),
    and unary postfix operators appear immediately after their target (such as c!).
 
    Binary operators operate on two targets (such as 2 + 3) and are infix because they appear in between their two targets.
 
    Ternary operators operate on three targets. Like C, Swift has only one ternary operator, the ternary conditional operator (a ? b : c).
 
*/

let b = 10
var a = 5
a = b
// a is now equal to 10

let (x, y) = (1, 2)
// x is equal to 1, and y is equal to 2

1 + 2       // equals 3
5 - 3       // equals 2
2 * 3       // equals 6
10.0 / 2.5  // equals 4.0

"hello, " + "world"  // equals "hello, world"

let minusSix = -6
let alsoMinusSix = +minusSix  // alsoMinusSix equals -6

var ab = 1
ab += 2
// a is now equal to 3


1 == 1   // true because 1 is equal to 1
2 != 1   // true because 2 is not equal to 1
2 > 1    // true because 2 is greater than 1
1 < 2    // true because 1 is less than 2
1 >= 1   // true because 1 is greater than or equal to 1
2 <= 1   // false because 2 is not less than or equal to 1


let defaultColorName = "red"
var userDefinedColorName: String?   // defaults to nil

var colorNameToUse = userDefinedColorName ?? defaultColorName
// userDefinedColorName is nil, so colorNameToUse is set to the default of "red"


/*Logical Operators*/

let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
// Prints "ACCESS DENIED"
