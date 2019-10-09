import UIKit

/// This is a Commentary

/*
    Swift is a new lenguage programmming
    for iOS, macOS and tvOS app Develoments
*/


//Costanst and Variables

let maximumNumberOfLoginAttempts = 10  // constants

var currentLoginAttempt = 0            // Variables

var x = 0.0, y = 0.0, z = 0.0   //multiple constants or multiple variables on a single line

var str = "Hello, playground xd"

var welcomeMessage: String  //“Declare a variable called welcomeMessage that is of type String.”

welcomeMessage = "Hello"

var red, green, blue: Double  //You can define multiple related variables of the same type on a single line, separated by commas


/*Naming Constants and Variables*/


let π = 3.14159       // Constants including Unicode character
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"


var friendlyWelcome = "Hello!"  //You can change the value of an existing variable to another value of a compatible type
friendlyWelcome = "Bonjour!"



//Printing Constants and Variables

print(friendlyWelcome)

print("The current value of friendlyWelcome is \(friendlyWelcome)") //Swift uses string interpolation to include the name of a constant or variable as a placeholder                                                                   in a longer string, and to prompt Swift to replace it with the current value of that constant                                                                    or variable.

//Semicolons
let cat = "🐱"; print(cat)  //However, semicolons are required if you want to write multiple separate statements on a single line



let anotherPi = 3 + 0.14159 // anotherPi is also inferred to be of type Double

let pi = 3.14159  // pi is inferred to be of type Double

let meaningOfLife = 42  //// meaningOfLife is inferred to be of type Int

let decimalInteger = 17

let binaryInteger = 0b10001       // 17 in binary notation

let octalInteger = 0o21           // 17 in octal notation

let hexadecimalInteger = 0x11     // 17 in hexadecimal notation

let decimalDouble = 12.1875

let exponentDouble = 1.21875e1

let hexadecimalDouble = 0xC.3p0

let paddedDouble = 000123.456

let oneMillion = 1_000_000

let justOverOneMillion = 1_000_000.000_000_1

//Integer Conversion

let twoThousand: UInt16 = 2_000

let one: UInt8 = 1

let twoThousandAndOne = twoThousand + UInt16(one)

let three = 3

let pointOneFourOneFiveNine = 0.14159

let integerPi = Int(three)

typealias AudioSample = UInt16 //Type aliases are useful when you want to refer to an existing type by a name that is contextually more appropriate

var maxAmplitudeFound = AudioSample.min  //// maxAmplitudeFound is now 0

//Booleans

let orangesAreOrange = true

let turnipsAreDelicious = false

