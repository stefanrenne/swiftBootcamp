/*:
 ## 5. Collections and Closures
 [Previous](@previous)
 
 ---
 ## Collections
 In Swift you can use both dictionaries and arrays, the syntax to use them is very similar to the Ruby syntax.
 Arrays can store a list of objects, in the order as they are appended to the array.
 Dictionaries store objects based on a unique key, for example the id of an object. Dictionaries are not ordered, and should always take the key in account when retrieving objects.
 */

import Cocoa

var arrayOfNumbers = [Int]()
arrayOfNumbers.append(0)
arrayOfNumbers.append(1)
arrayOfNumbers.append(2)
arrayOfNumbers.append(3)
arrayOfNumbers.append(4)
arrayOfNumbers.append(5)
arrayOfNumbers.append(6)
arrayOfNumbers.append(7)

// Can also be written as
let arrayOfNumbersShort = [0, 1, 2, 3, 4, 5, 6, 7]

var sum = 0
for number in arrayOfNumbers { // Number is implied of type Int
    sum += number
}
sum

struct DataObject {
    let data: String
}

let dictOfDataObjects = [
    7: DataObject(data: "Hello"),
    1: DataObject(data: "Swift"),
    13: DataObject(data: "Is"),
    2: DataObject(data: "Awesome")
] // Note the output, the order is different than defined

dictOfDataObjects[7]
dictOfDataObjects[12]
for (id, object) in dictOfDataObjects {
    print ("ID: \(id) => \(object)")
}

/*:
 ## Closures
 Closures are comparable with Blocks in Objective-C and are used as callback when long running actions are completed (i.e. fetching a JSON feed). 
 
 Just like blocks, closures have an odd syntax. Although it has improved, Zev Eisenberg created a nice little website as a helper: http://fuckingclosuresyntax.com
 
 As and example, let's define a random array and sort it by one of the objects properties
 */

struct TestObject {
    let id: Int
    let data: String
}

var objects = [
    TestObject(id: 4, data: "DataBlock4"),
    TestObject(id: 8, data: "DataBlock8"),
    TestObject(id: 7, data: "DataBlock7"),
    TestObject(id: 19, data: "DataBlock19"),
    TestObject(id: 11, data: "DataBlock11"),
    TestObject(id: 30, data: "DataBlock30"),
    TestObject(id: 0, data: "DataBlock0")
]

objects.sort { (lhs, rhs) -> Bool in
    return lhs.id < rhs.id
}

/*:
 The sort function is a mutating function, this means the object it's called on will be modified by the function itself. As the sort function is mutaing, we don't need to store the result of the function in the **objects** variable again. Since the object is being modified, it needs to be defined as a **var**.
 */

/*:
 ## Challenge
 ---
 Define the model for a messaging application. There are multiple conversations possible. Each conversation has an array of members, and messages. Each message is linked to a recipient.
 
 Add code to order a conversation's messages from oldest to newest. Each conversation can be searched for a specific piece of text, and keeps track of the amount of messages a specific member has sent.
 */
