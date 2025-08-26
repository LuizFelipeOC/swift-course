import Foundation


struct Person {
    let firstName: String?
    let lastName: String?
    
    enum Errors: Error {
        case missingFirstName
        case missingLastName
        case missingBoth
    }
    
    func getFullName() throws -> String {
        if let firstName, let lastName {
            "\(firstName) \(lastName)"
        } else if firstName == nil, lastName != nil {
            throw Errors.missingFirstName
        } else if firstName != nil, lastName == nil {
            throw Errors.missingLastName
        }
        
        throw Errors.missingBoth
    }
}

let foo = Person(firstName: nil, lastName: "Costa")

do {
    let fullName = try foo.getFullName()
} catch {
    "Got an error = \(error)"
}

let bar = Person(firstName: nil, lastName: nil)

do {
    let fullName = try bar.getFullName()
    fullName
} catch  Person.Errors.missingLastName {
    "Missing Last Name"
} catch  Person.Errors.missingFirstName {
    "Missing First Name"
} catch  Person.Errors.missingBoth {
    "Missing Both"
}


struct Car {
    let manufacturer: String
    
    enum CarErrors: Error {
        case InvalidManufacturer
    }
    
    init(manufacturer: String) throws {
        if manufacturer.isEmpty {
            throw CarErrors.InvalidManufacturer
        }
        self.manufacturer = manufacturer
    }
    
}

do {
    let myCar = try Car(manufacturer: "")
    myCar
    myCar.manufacturer
} catch Car.CarErrors.InvalidManufacturer {
    "Invalid Manufacturer"
} catch {
    "Something went wrong"
}

if let yourCar = try? Car(manufacturer: "Tesla") {
    "Success, your card is \(yourCar.manufacturer)"
} else {
    "Failed to construct and error is not accessible now"
}


let theirCar = try? Car(manufacturer: "Ford")
theirCar?.manufacturer
