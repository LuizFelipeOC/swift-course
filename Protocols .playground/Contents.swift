import Foundation


protocol CanBreath {
    func breathe()
}

struct Animals: CanBreath {
    func breathe() {
        print("I can breathe")
    }
}

struct Person: CanBreath {
    func breathe() {
        print("I can breathe too")
    }
}

let dog = Animals()
dog.breathe();

let foo = Person()
foo.breathe()

protocol CanJump {
    func jump()
}

extension CanJump {
    func jump() {
        print("I can jump")
    }
}

struct Cat: CanJump {}

let whiskers = Cat()
whiskers.jump()


protocol HasName {
    var name: String { get }
    var age: Int { get set }
}

struct Dog: HasName {
    var name: String
    var age: Int
}

var woof = Dog(name: "Woof", age: 10)
woof.name
woof.age
woof.age += 1
woof.age

func describe(obj: Any) {
    if obj is Dog {
        "Object is a Dog"
    } else {
        "Object is not a Dog"
    }
}

describe(obj: woof)
