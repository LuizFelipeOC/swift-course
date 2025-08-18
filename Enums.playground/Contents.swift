import Foundation

enum Animals {
    case cat
    case dog
    case rabbit
}


let cat: Animals = Animals.cat
cat

if cat == Animals.cat {
    "This is a cat"
} else if cat == Animals.dog {
    "This a dog"
} else if cat == Animals.rabbit {
    "This a rabbit"
} else {
    "This is somenting else"
}


switch cat {
    case .cat:
        "This is a cat"
        break
    case .dog:
        "This is a dog"
        break
    case .rabbit:
        "This a rabbit"
        break
}

func describeAnimals(_ animal: Animals)  {
    switch animal {
        case .cat:
            "This is a cat"
            break
        case .dog:
            "This is a dog"
            break
        case .rabbit:
            "This a rabbit"
            break
    }
}

describeAnimals(Animals.rabbit)


