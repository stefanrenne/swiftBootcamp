/*:
 ## 2. Classes, Enums, Structs
 [Previous](@previous)
 [Next](@next)
 
 ---
 ## Classes
 Classes define objects when programming. An object represents a building block in your code, using variables and functions.
 Classes can be used to store data, for example for Persons or Animals, and to provide resusable functionlity.
 For example, a Animal class could look like this
 */

import Cocoa

class Animal {
    let name: String
    let age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

/*:
 An instance of the Animal class can be created and used like this
 */
let animal = Animal(name: "Fluffy", age: 5)
"\(animal.name) is \(animal.age) years old"

/*:
 Classes can be extended to add functionality on top of what the class already defined, this is called subclassing. For example; A Dog is an animal, which can bark.
 */

class Dog: Animal {
    
    func bark() {
        print("\(name): Woof")
    }
    
}

let dog = Dog(name: "Parker", age: 3)
"\(dog.name) is \(dog.age) years old"
dog.bark()

/*:
 ## Enums
 Enums are grouped variables, where a variable always has the same static value. For example an enum of colors
 */

enum Colors {
    case Red
    case Orange
    case Yellow
    case Green
    case Blue
    case purple
};

let color = Colors.Red

/*:
 Different from Objective-C, in Swift enums can have all kinds of data types
 */

enum Direction: Int {
    case North
    case East
    case South
    case West
};

var direction = Direction.South
"Direction's value: \(direction.rawValue)"
direction = Direction(rawValue: 3)!

/*:
 Even enums can host functions to provide functionality
 */

enum Status: String {
    case Queued = "queued"
    case InProgress = "in progress"
    case Completed = "completed"
    case Failed = "failed"
    
    var isDone: Bool {
        get {
            return self == .Completed || self == .Failed
        }
    }
};

Status.InProgress.isDone
Status.Completed.isDone

/*:
 ## Structs
 Basically, structs can do exactly the same things as classes. They can host variables and functions, be subclassed, conform to protocols, etc.
 No clear answer can be given when to use functions and structs, as they have a different memory consumption model. Depending on your usage you should use either structs or classes.
 For more information, please see these WWDC videos:
 * [Protocol oriented programming]: https://developer.apple.com/videos/play/wwdc2015/408/
 * [Understanding Swift Performance]: https://developer.apple.com/videos/play/wwdc2016/416/
 */

struct Person {
    let firstName: String
    let lastName: String
}

let person = Person(firstName: "Jacky", lastName: "Chan") // Structs give you a free initializer!

/*:
 ## Challenge
 ---
 Define all classes, enums and structs to some data about companies. The following data needs to be stored.
 
 Company;
  - Name
  - Adress
  - Field of operation (eithe IT, Fincancial or Space travel)
  - CEO
  - List of employees
 
 Address;
  - Street
  - House number
  - Postal code
  - City
  - Country
 
 Employee;
  - Name
  - Address
  - Gender
 */
