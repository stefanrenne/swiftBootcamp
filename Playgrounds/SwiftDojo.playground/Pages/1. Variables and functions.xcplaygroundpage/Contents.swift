/*:
 ## 1. Variables and functions
 [Next](@next)
 
 ---
 ## Variables
 Variables are keywords in which data can be stored. This can be numbers, pieces of text, booleans and even complete objects.
 In Swift, there's a relatively strong usage of constants. Contstants are variables which cannot be changed after assignment.
 
 Constants are defined with __let__, while non-constant variables are defined with __var__. Trying to change a contstant will result in a compilation error.
 
 Below you can see examples how variables are defined
*/
import Cocoa

let myNumber: Int = 13
var cost: Double = 5.23
cost = 10.5 // 'cost' is a variable, so it can be changed
let evening: Bool = true
let name: String = "Playground"
// name = "MyName; // 'name' is a constant, so it cannot be changed.
/*:
 ## Functions
 Functions are used to group reusable code together. Functions can be use for complex computations, or simple abstraction to prevent code duplication.
 
 For example, a function which says hello
 */
func sayHello(name: String) {
    print("Hello, " + name)
}

sayHello(name: name)
sayHello(name: "Swift")

/*:
 Functions can also return variables, so you can use results of functions in the rest of your code.
 */

func combine(firstString: String, secondString: String) -> String {
    return firstString + secondString
}

/*:
 In Swift functions can even return mutliple variables
 */

func combineAndCount(firstString: String, secondString: String) -> (String, Int) {
    let combinedString = firstString + secondString
    let combinedLength = combinedString.utf16.count
    
    return (combinedString, combinedLength)
}

/*:
 ## Challenge 1
 ---
 Write a function *sayHi* which uses the *combine* function defined above
 */

/*:
 ## Challenge 2
 ---
 Write a function which takes two __Int__ arguments
 
 When the first argument's value is larger than the second, the function prints "**x is larger than y**"
 
 When the second argument's value is larger than the first, the function prints "**x is smaller than y**"
*/

/*:
 ## Challenge 3
 ---
 Call the function twice with the same variables used as paramters, but change the value of the second one
 
 Also make sure the first variable cannot be changed
 */
