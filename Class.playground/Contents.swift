import Foundation

class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func increaseAge() -> Int {
        age += 1
        return age
    }
}


let foo: Person = Person(name: "Lucas", age: 12)
foo.age
foo.increaseAge()
foo.age

let bar = foo
bar.increaseAge()
bar.age
foo.age


if foo === bar {
    "Foo and bar point to the sasme memory"
} else {
    "Foo and bar as diferent memory"
}


class Veichle {
    func goVroom() {
        "Vroom Vroom"
    }
}

class Car: Veichle {
    override func goVroom() {
        "Beep Boop"
    }
}

let car: Car = Car()
car.goVroom()


class MyClass {
    init() {
        "Iinit"
    }
    
    func doSomenthing() {
        "Doing something"
    }
    
    deinit {
        "Deinit"
    }
}


let muyClousure = {
    let myClass = MyClass()
    myClass.doSomenthing()
}

muyClousure()
