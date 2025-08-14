import Foundation

struct Person {
    let name: String
}

let foo = Person(name: "Luiz")

foo.name

struct Commodore {
    let name: String;
    let manafacturer: String;
    
    init(name: String) {
        self.name = name
        self.manafacturer = ""
    }
}

let commodore64 = Commodore(name: "Commodore 64")

commodore64.name
commodore64.manafacturer


struct Person2 {
    let firstName: String
    let lastName: String
    let fullName: String
    
    init(firstName: String, lastName: String ) {
        self.firstName = firstName
        self.lastName = lastName
        self.fullName = "\(firstName) \(lastName)"
    }
}

let person2: Person2 = Person2(firstName: "Luiz", lastName: "Ferreira")

person2.firstName
person2.lastName
person2.fullName


struct Car {
    var currentSpeed: Int
    
    mutating func drive(speed: Int) {
        "Drivin..."
        currentSpeed = speed * 20
    }
}

let immutableCar: Car = Car(currentSpeed: 20)
//immutableCar.drive(speed: 20)

var mutableCar: Car = Car(currentSpeed: 20)
let copy = mutableCar

mutableCar.drive(speed: 30)
mutableCar.currentSpeed

copy.currentSpeed;







