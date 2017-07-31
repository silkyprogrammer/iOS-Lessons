//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//print(str)


enum Rank:Int{
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}

let ace = Rank.ace
let aceRawValue = ace.rawValue

let kingvar = Rank.king
let kingraw = kingvar.rawValue


if let convertedRank = Rank(rawValue:3) {
    let threeDesc = convertedRank.simpleDescription()
    
}



enum Suit{
    case spades, hearts, diamonds, clubs
    
    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
    
    func Colors() -> String {
        switch self {
        case .spades:
            return "black"
        case .clubs:
            return "black"
        case .hearts:
            return "red"
        default:
            return "no color"
        }
    }
}

let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()
let heartsColor = hearts.Colors()


enum ServerResponse{
    
    case result(String,String)
    case failure(String)
    
}

let success = ServerResponse.result("6:00am", "8:00pm")
let failure = ServerResponse.failure("Out of Cheese")

switch success {
case let .result(sunrise,sunset) :
    print("\(sunrise) - \(sunset)")
case let .failure(message):
    print("\(message)")
}

struct Card{
    
    var rank:Rank
    var suit:Suit
    
    func simpleDescription() -> String {
        return " \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}

let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDesc = threeOfSpades.simpleDescription()




















