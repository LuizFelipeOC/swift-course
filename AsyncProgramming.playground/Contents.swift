import Foundation
import PlaygroundSupport
import _Concurrency

PlaygroundPage
    .current
    .needsIndefiniteExecution = true


func calculateFullName(firstName: String, lastName: String) async -> String {
    try? await Task.sleep(for: .seconds(1))
    return "\(firstName) \(lastName)"
}


Task {
    let result1 = await calculateFullName(
        firstName: "Luiz",
        lastName: "Costa"
    )
    
    async let result2 = await calculateFullName(
        firstName: "Luiz",
        lastName: "Costa"
    )
    
    await result2
}


enum Clothe {
    case socks, shirt, trousers
}

func buySocks() async -> Clothe {
    try? await Task.sleep(for: .seconds(1))
    return Clothe.socks
}

func buyShirt() async -> Clothe {
    try? await Task.sleep(for: .seconds(1))
    return Clothe.shirt
}

func buyTrousers() async -> Clothe {
    try? await Task.sleep(for: .seconds(1))
    return Clothe.trousers
}

struct Ensemble: CustomDebugStringConvertible {
    let clothes: [Clothe]
    let totalPrice: Double
    
    var debugDescription: String {
        "Clothes = \(clothes), totalPrice = \(totalPrice)"
    }
}

func buyWholeEnsemble() async throws -> Ensemble {
    async let socks = await buySocks()
    async let shirt = await buyShirt()
    async let trousers = await buyTrousers()
    
    let ensemle = Ensemble(clothes: await [
        try socks,
        try shirt,
        try trousers
    ], totalPrice: 200
)
    
    return ensemle
}


Task {
    if let ensemble = try? await buyWholeEnsemble() {
        print(ensemble)
    } else {
        "Something went wrong"
    }
}


func getFullName(
    delay: Duration,
    calculator:  () async -> String
) async -> String {
    try? await Task.sleep(for: delay)
    return await calculator()
}

func fullName() async -> String { "Foo Bar" }

Task {
    await getFullName(delay: .seconds(1)) {
        async let name = fullName()
        return await name
    }
}
