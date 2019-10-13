import UIKit

let someString = "Some string literal value"

let quotation = """
The White Rabbit put on his spectacles.  "Where shall I begin,
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""

let singleLineString = "These are the same."
let multilineString = """
These are the same.
"""

/*Special Characters in String Literals*/


/*
    String literals can include the following special characters:
    The escaped special characters
    \0 (null character),
    \\ (backslash),
    \t (horizontal tab),
    \n (line feed),
    \r (carriage return),
    \" (double quotation mark) and
    \' (single quotation mark)
 
    An arbitrary Unicode scalar value, written as \u{n}, where n is a 1–8 digit hexadecimal number (Unicode is discussed in Unicode below)
 */

let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
// "Imagination is more important than knowledge" - Einstein
let dollarSign = "\u{24}"        // $,  Unicode scalar U+0024
let blackHeart = "\u{2665}"      // ♥,  Unicode scalar U+2665
let sparklingHeart = "\u{1F496}" // 💖, Unicode scalar U+1F496

/*Initializing an Empty String*/

var emptyString = ""               // empty string literal
var anotherEmptyString = String()  // initializer syntax
// these two strings are both empty, and are equivalent to each other


/*String Mutability*/

var variableString = "Horse"
variableString += " and carriage"
// variableString is now "Horse and carriage"

//let constantString = "Highlander"
//constantString += " and another Highlander"
// this reports a compile-time error - a constant string cannot be modified

/*String values can be constructed by passing an array of Character values as an argument to its initializer:*/

let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
print(catString)
// Prints "Cat!🐱"

/*Concatenating Strings and Characters*/

let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2
// welcome now equals "hello there"


var word = "cafe"
print("the number of characters in \(word) is \(word.count)")
// Prints "the number of characters in cafe is 4"

word += "\u{301}"    // COMBINING ACUTE ACCENT, U+0301

print("the number of characters in \(word) is \(word.count)")
// Prints "the number of characters in café is 4"

let greeting = "Guten Tag!"
greeting[greeting.startIndex]
// G
greeting[greeting.index(before: greeting.endIndex)]
// !
greeting[greeting.index(after: greeting.startIndex)]
// u
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]
// a


/*Inserting and Removing*/

var welcome1 = "hello"
welcome1.insert("!", at: welcome1.endIndex)
// welcome now equals "hello!"

welcome1.insert(contentsOf: " there", at: welcome1.index(before: welcome1.endIndex))
// welcome now equals "hello there!"


welcome1.remove(at: welcome1.index(before: welcome1.endIndex))
// welcome now equals "hello there"

let range = welcome1.index(welcome1.endIndex, offsetBy: -6)..<welcome1.endIndex
welcome1.removeSubrange(range)
// welcome now equals "hello"


/*Substrings*/
let greeting1 = "Hello, world!"
let index1 = greeting1.firstIndex(of: ",") ?? greeting1.endIndex
let beginning = greeting1[..<index1]
// beginning is "Hello"

// Convert the result to a String for long-term storage.
let newString = String(beginning)


/*Comparing Strings*/
let quotation1 = "We're a lot alike, you and I."
let sameQuotation = "We're a lot alike, you and I."
if quotation1 == sameQuotation {
    print("These two strings are considered equal")
}
