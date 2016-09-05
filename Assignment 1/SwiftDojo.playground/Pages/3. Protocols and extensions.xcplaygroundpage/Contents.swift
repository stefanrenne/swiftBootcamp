/*:
 ## 3. Protocols and Extensions
 [Previous](@previous)
 [Next](@next)
 
 ---
 ## Protocols
 Protocols define how an object looks, giving the ability to use completely differnt objects in the same way. Protocols can define variables and functions an object neems to conform to in order to compile.
 Protocols can be compared with interfaces in other programming languages. In Swift protocols can even have a default implementation to be used by each object conforming to your protocol.
 */

import Cocoa

protocol Logger {
    var tag: String { get }
    
    func log(message: String) -> String
}

extension Logger {
    // Each object implementing the Logger protocol can use this implementation of the log fuction
    func log(message: String) -> String {
        let combinedMessage = "\(tag) | \(message)"
        
        print(combinedMessage)
        return combinedMessage
    }
}

struct Plant: Logger {
    var tag: String {
        get {
            return "PLANT"
        }
    }
}

class Car: Logger {
    var tag: String {
        get {
            return "CAR"
        }
    }
}

Plant().log(message: "Hi, I'm a plant")
Car().log(message: "And I'm a car")

/*:
 ## Extensions
 Extensions are like categories in Objective-C, and they can be used to add extra functionality to an exsiting class.
 For example, a String doesn't have a 'length' property. With extensions, we can simply add this
 */

extension String {
    
    var length: Int {
        return self.utf16.count
    }
    
}

"Hello, Playgrounds".length

/*:
 Extensions can also be used to make objects conform to a certain protocol. For example when you want to compare Persons based on their length.
 */

struct Person {
    var length: Int // in CM
}

extension Person: Comparable {}

func < (lhs: Person, rhs: Person) -> Bool {
    return lhs.length < rhs.length
}

func == (lhs: Person, rhs: Person) -> Bool {
    return lhs.length == rhs.length
}

func > (lhs: Person, rhs: Person) -> Bool {
    return lhs.length > rhs.length
}

let person1 = Person(length: 150)
let person2 = Person(length: 180)

person1 < person2
person2 > person1
person2 == person1

/*:
 ## Challenge
 ---
 Define an Animal protocol with the properties **name, age, and number of limbs**. A Cat, Dog and Frog all conform to the Animal protocol. Each animal can **make it's own noise** but **move** in the same way. The Cat and Dog can also be **trained**. 
 */
