//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

protocol ExampleProtocol{
    
    var simpleDescription:String { get }
    mutating func adjust()
    
}

class SimpleClass:ExampleProtocol{
    var simpleDescription: String = "A Simple Class"
}