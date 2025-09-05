import Foundation

let numbers = [1, 2 ,3, 4]
numbers.last
numbers.first
numbers.count
numbers.map(-)


var mutatingNumbers = [4, 5, 6]
mutatingNumbers.append(7)
mutatingNumbers.insert(8, at: 0)

mutatingNumbers.insert(contentsOf: [9, 10], at: mutatingNumbers.count)


for value in numbers {
    value
}

for value in numbers where value % 2 == 0 {
    value
}

numbers.map { (value: Int) -> Int in
     return   value * 2
}

numbers.filter {
    (value: Int) -> Bool in
    value >= 3
}


numbers.compactMap { (value: Int) -> String? in
    value % 2 == 0 ? String(value) : nil
}


let numbers2: [Int?] = [1, 2, nil, 3]
numbers.count
let notNils = numbers2.filter { (value: Int?) ->  Bool in value != nil }
