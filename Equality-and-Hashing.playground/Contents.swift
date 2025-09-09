import Foundation

struct Person: Equatable {
    let id: String
    let name: String
}


let foo1 = Person(id: "1", name: "Foo")
let foo2 = Person(id: "1", name: "Bar")

if foo1 == foo2 {
    "They are equals"
} else {
    "They are not equals"
}

extension Person {
    static func == (lhs: Self, rhs: Self) -> Bool {
     return lhs.id == rhs.id
    }
}


enum AnimalType {
    case dog(breed: String)
    case cat(breed: String)
}


extension AnimalType: Equatable {
    static func == (lhs: Self, rhs: Self) -> Bool {
        switch(lhs, rhs) {
        case let (.dog(lhs), .cat(breed: rhs)):
            return lhs == rhs
        default:
            return false
        }
    }
}


struct Animal: Equatable {
    let name: String
    let type: AnimalType
    
    static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.type == rhs.type
    }
}

let cat1 = Animal(name: "Whisker", type: .cat(breed: "Street Cat"))
let cat2 = Animal(name: "Woosh", type: .cat(breed: "Street Cat"))

if cat1 == cat2 {
    "They are equal because their type"
} else {
    "They are not equal their type"
}
