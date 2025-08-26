import Foundation


func multiplyByTwo(_ value: Int? = nil) -> Int {
    if let value {
        return  value * 2
    }
    
    return 0
}

multiplyByTwo()
multiplyByTwo(nil)
multiplyByTwo(4)
multiplyByTwo(8)
