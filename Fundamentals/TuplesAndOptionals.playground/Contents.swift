import UIKit

/*Tuples*/

let http404Error = (404, "Not Found")

let (statusCode, statusMessage) = http404Error

print("The status code is \(statusCode)")

print("The status code is \(statusMessage)")

let (justTheStatusCode, _) = http404Error  //If you only need some of the tuple’s values, ignore parts of the tuple with an underscore (_)

print("The status code is \(justTheStatusCode)")

//Alternatively, access the individual element values in a tuple using index numbers starting at zero:
print("The status code is \(http404Error.0)")

print("The status message is \(http404Error.1)")

let http200Status = (statusCode: 200, description: "OK") //You can name the individual elements in a tuple when the tuple is defined:

print("The status code is \(http200Status.statusCode)") // Prints "The status code is 200"

print("The status message is \(http200Status.description)") // Prints "The status message is OK"



/* Optionals*/

/*
    You use optionals in situations where a value may be absent.
    An optional represents two possibilities:
    Either there is a value, and you can unwrap the optional to access that value, or there isn’t a value at all.
 
    In Swift, nil isn’t a pointer—it’s the absence of a value of a certain type.
    Optionals of any type can be set to nil, not just object types.
 
*/


let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
//(convertedNumber)

print(convertedNumber!)

var serverResponseCode: Int? = 404  //This is declared as optional
// serverResponseCode contains an actual Int value of 404
//serverResponseCode = nil
// serverResponseCode now contains no value
var surveyAnswer: String?

print(serverResponseCode!)  //Unwrapping Value

//Once you’re sure that the optional does contain a value, you can access its underlying value by adding an exclamation mark (!) to the end of the optional’s name.
if convertedNumber != nil {
    print("convertedNumber has an integer value of \(convertedNumber!).")
}

//Optional Binding
if let actualNumber = Int(possibleNumber) {
    print("The string \"\(possibleNumber)\" has an integer value of --> \(actualNumber)")
} else {
    print("The string \"\(possibleNumber)\" could not be converted to an integer")
}
// Prints "The string "123" has an integer value of 123"

/*
        Constants and variables created with optional binding in an if statement are available only within the body of the if statement.
        In contrast, the constants and variables created with a guard statement are available in the lines of code that follow the guard statement,
        as described in Early Exit.
 */

let possibleString: String? = "An optional string."
print(possibleString)
let forcedString: String = possibleString! // requires an exclamation mark
print(forcedString)

let assumedString: String! = "An implicitly unwrapped optional string."
print(assumedString)
let implicitString: String = assumedString // no need for an exclamation mark
print(implicitString)


/* in the eclaration of variable

 ?  ---> is optional                     --->  requires an exclamation mark        --->unwrapping with !
 !  ---> is an implicitly unwrapped      --->  no need for an exclamation mark
 
*/

if assumedString != nil {
    print(assumedString!)
}
// Prints "An implicitly unwrapped optional string."



if let definiteString = assumedString {
    print(definiteString)
}
// Prints "An implicitly unwrapped optional string."


/*Error Handling*/
func canThrowAnError() throws {
    // this function may or may not throw an error
}

do {
    try canThrowAnError()
    // no error was thrown
} catch {
    // an error was thrown
}

