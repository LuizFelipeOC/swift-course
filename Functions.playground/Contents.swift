import Foundation


func noArgumentsaAndReturns() {
    "I dont know what to return or doing"
}

noArgumentsaAndReturns()

func plusTwoValue(value: Int) {
    let value = value + 2
}

plusTwoValue(value: 2)

func newPlusTwoValue(value: Int) -> Int {
    value + 2
}

newPlusTwoValue(value: 20)

func sum(value1: Int, value2: Int) -> Int {
    value1 + value2
}

let totalValue = sum(value1: 10, value2: 10)
totalValue

func minus(value1: Int, value2: Int) -> Int {
    value1 - value2
}

let totalMinusVakye = minus(value1: 10, value2: 10)


func getFullame(firstName: String = "", lastName: String = "") -> String {
    "\(firstName) \(lastName)"
}

getFullame(firstName: "Lucas", lastName: "Padro")
getFullame(firstName: "Luiz")




