import Foundation

func perform(_ op: (Int, Int) -> Int, on lhs: Int, and rhs: Int) -> Int {
    op(lhs, rhs)
}

func performDouble(_ op: (Double, Double) -> Double, on lhs: Double, and rhs: Double) -> Double {
    op(lhs, rhs)
}

perform(+, on: 10, and: 20)
perform(-, on: 10, and: 20)
perform(*, on: 10, and: 20)
perform(/, on: 10, and: 50)

performDouble(+, on: 10.5, and: 30.20)


func performNumeric<N: Numeric>(_ op: (N, N) -> N, on lhs: N, and rhs: N) -> N {
    op(lhs, rhs)
}

performNumeric(+, on: 5, and: 20.9)
