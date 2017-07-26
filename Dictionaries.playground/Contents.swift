//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print("Hello Hari")
print(str)

var myVariable = 50
let newVariable = 42
//newVariable = 50 - constant by "let"

let implicitInteger = 10
let implicitDouble = 20
let explicitDouble:Double = 40
let explicitFloat:Float = 4


let label = "The width is "
let width = 98
let widthLabel = label + String(width)
//let widthLabel = label + width - binary operator cannot be applied to operands of type string and int.


let apples = 8
let oranges = 10

let appleSummary = "I have \(apples) apples!"
let fruitSummary = "I have \(apples) apples and \(oranges) oranges, in total \(apples+oranges) fruits!"


//let quotes = """
//    Where there is a will there
//        is a
//    way
//    """



var shoppingList = ["catfish","water","tulips","blue paint"]
shoppingList[1]

var occupations = [
    "malcolm" : "Captain",
    "kaylee" : "Mechanic"
]

occupations["jane"] = "Flowerist"

//occupations

let emptyArray = [String]()
let emptyDict = [String:Float]()

shoppingList = []
occupations = [:]

let individualScores = [10,20,30,40,50]
var teamScore = 0

for score in individualScores{
    if score > 30{
        teamScore += 3
    }else{
        teamScore += 1
    }
}

print(teamScore)


var optionalString:String? = "Hello"
print(optionalString == nil)

var optionalName:String? = "Homely Lyric!"
//var optionalName:String? = nil
var greeting = ""

if let name = optionalName{
    greeting = "Hello\(name)"
    print(greeting)
}
//else{
//    print(greeting)
//}


let vegetable = "red"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup")
}


let interestingNumbers = [
    "Prime" : [2,3,5,7,11,13],
    "Fibonacci": [1,1,2,3,5,8],
    "Square": [1,4,9,16,25]
]

var largest = 0

for (kind, numbers) in interestingNumbers{
    for number in numbers{
        if number > largest{
            largest = number
        }
    }
}
print(largest)

var n = 2
while n < 100 {
    n *= 2
}
print(n)

var m = 2
repeat{
    m *= 2
}while m < 100

print(m)

var total = 0

for i in 0..<4{
    total += i
}
print(total)


func greet(person:String, day:String) -> String{
    return "Hello \(person), today is \(day)"
    
}
print(greet(person: "Hari", day: "Monday"))


func greeting(_ person:String, on day:String) -> String{
    return "Hello \(person), today is \(day)."
}
greeting("Hari", on:"Wednesday")


func calculateStatistics(scores: [Int]) -> (min:Int, max:Int, sum:Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores{
        if score > max{
            max = score
        }else if score < min{
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}

let statistics = calculateStatistics(scores: [5,3,100,3,9])

print(statistics.sum)
print(statistics.2)


func returnFifteen() -> Int{
    var y = 10
    func add(){
        y += 5
    }
    add()
    return y
}

returnFifteen()

func makeIncrementer() -> ((Int)-> Int){
    func addOne(number: Int) -> Int{
        return 1 + number
    }
    return addOne
}

var increment = makeIncrementer()
increment(1)

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool{
    
    for item in list{
        if condition(item){
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool{
    return number < 10
}

var numbers = [20,19,7, 12]

hasAnyMatches(list: numbers, condition: lessThanTen)

numbers.map({(number:Int) -> Int in
    let result = 3 * number
    return result
    
})

class Shape{
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A Shape with \(numberOfSides) sides."
    }
}


class NamedShape{
    var numberOfSides: Int = 0
    var name:String
    
    init(name:String){
        self.name = name
    }
    
    func SimpleDescription() -> String {
        return "A Shape with \(numberOfSides) sides."
    }
}



class Square: NamedShape{
    var sideLength:Double
    
    init(sideLength: Double, name:String){
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func Area() -> Double {
        return sideLength * sideLength
    }
    
    override func SimpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}

let test = Square(sideLength: 5.2, name: "my Test Square")
test.Area()
test.SimpleDescription()


class EquilateralTriangle: NamedShape{
    var sideLength: Double = 0.0
    
    init(sideLength:Double, name:String){
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter:Double{
        get{
            return 3.0 * sideLength
        }
        set{
            sideLength = newValue / 3.0
        }
    }
    
    override func SimpleDescription() -> String {
        return "An equilateral triangle with sides of Length \(sideLength)."
    }
}

var triangle = EquilateralTriangle(sideLength: 3.1, name: "A Triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)



class TriangleAndSquare{
    var triangle: EquilateralTriangle{
        willSet{
            square.sideLength = newValue.sideLength
        }
    }
    
    var square: Square{
        willSet{
            triangle.sideLength = newValue.sideLength
        }
    }
    
    init(size:Double, name:String){
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
    
}

var trianglAndSquare = TriangleAndSquare(size: 10, name: "Another Test Shape")
print(trianglAndSquare.square.sideLength)
print(trianglAndSquare.triangle.sideLength)

trianglAndSquare.square = Square(sideLength: 50, name: "Large square")
print(trianglAndSquare.triangle.sideLength)

let optionalSquare:Square? = Square(sideLength: 2.5, name: "Optional Square")
let sideLength = optionalSquare?.sideLength
























































