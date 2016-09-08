/*:
 ## 4. Conditions and Optional Chaining
 [Previous](@previous)
 [Next](@next)
 
 ---
 ## Conditions
 Swift uses two approaches to check for conditions. With if-statements and guard-statements. If-statements, just like in any other programming language, check for a specified condition and execute code if the condition is met. If the condition isn't met, the else block is ran.
 */

import Cocoa

if true {
    // This is executed
}
else {
    // This won't be executed
}

if 5 > 6 {
    // This won't be executed
}
else {
    // This will
}

func isEven(number: Int) -> Bool {
    return number % 2 == 0
}

// You can even call functions in if-statements

if isEven(number: 3) {
    // This won't be executed
}

if isEven(number: 4) {
    // This will be executed
}

/*:
 Guard-statements are similar to if-statements, but are mostly used to verify input in the beginning of methods. When using a guard statement the swift compiler requires you to end with a 'return' statement, as it stands guard for your following piece of code.
 
 Using guard-statements shows other developers in a quick overview what the requirements for parameters in your code are, and also reduces cyclomatic complexity due to less indentation in your code.
 */

// This function requires a even number as input

func requiresEvenNumber(number: Int) -> Bool {
    guard isEven(number: number) else {
        return false
    }
    
    // Your code which requires an even number
    
    return true
}

requiresEvenNumber(number: 3)
requiresEvenNumber(number: 4)

/*:
 ## Optional chaining
 ---
 As Swift requires optional chaining a lot, you'll find yourself checking for nil objects quite often. To reduce the usage of ! and ? characters in your code, optional chaining can be used to create a temporary non-optional value if the value isn't nil.
 
 Optional chaning is done by creating an if statement, and defining a constant in the condition
 */

func doSomethingWithString(text: String) {
    print("Hello \(text)!")
}

var 🐳: String?

if let myString = 🐳 {
    // This won't be executed, as 🐳 is nil
    doSomethingWithString(text: myString)
}

🐳 = "whale"

if let myString = 🐳 { // Note: myString can be used here as well, as the variable only exists within the scope of the if-statement
    // This will be executed, as 🐳 now has the value "whale"
    doSomethingWithString(text: myString)
}

// Alternative, without optional chaining the same code would look like this

if 🐳 != nil {
    doSomethingWithString(text: 🐳!)
}

// When having to use an optional variable mutliple times using optional chaining it the best way to go

var textView: NSTextView?

if let myTextView = textView {
    myTextView.isEditable = false
    myTextView.textColor = .black
}

// Optional chaning can even be used if an object is of a certain class

class MyCustomTextField: NSTextField {
    
}

let textField = NSTextField()
let customTextField = MyCustomTextField()

if let myTextField = textField as? MyCustomTextField {
    print("This won't be printed")
}

if let myTextField = customTextField as? MyCustomTextField {
    print("This will")
}
