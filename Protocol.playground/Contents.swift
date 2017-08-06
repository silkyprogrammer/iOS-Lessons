//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

protocol ExampleProtocol{
    
    var simpleDescription:String { get }
    mutating func adjust()
    
}

class SimpleClass:ExampleProtocol{
    var simpleDescription: String = "A Simple Class"
    var anotherProperty:Int = 69105
    
    func adjust() {
        simpleDescription += "Now 100% adjusted"
    }
}

var a = SimpleClass()
a.adjust()

let aDesc = a.simpleDescription

struct SimpleStructure : ExampleProtocol{
    var simpleDescription: String = "A Simple structure"
    mutating func  adjust() {
        simpleDescription += "(adjusted)"
    }
    
}

var b = SimpleStructure()
b.adjust()
let bDesc = b.simpleDescription
