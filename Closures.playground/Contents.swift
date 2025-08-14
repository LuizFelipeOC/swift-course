import Foundation



let add: (Int, Int) -> Int = {
    (lhs: Int, rhs: Int) -> Int in return lhs + rhs
}

add(20, 10)


func customAdd(_ val1: Int, _ val2: Int, using function: (Int, Int) -> Int) -> Int {
    function(val1, val2)
}

customAdd(30, 20, using: {(val1: Int, val2: Int ) -> Int in  val1 + val2})


let ages = [10, 20, 30, 40]
ages.sorted(by: >)
ages.sorted(by: <)
