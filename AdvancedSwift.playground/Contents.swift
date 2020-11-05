import Foundation

// stored property; willset refers to new value set and didset refers to old value

// did set value
var pizzaInINches: Int = 10 {
    // new value that was set can be called; will set code will trigger before pizzaInInches property is changed to 24
    willSet {
        print(newValue)
    }
    // old value that was set can be called; set a constraint for pizza size
    didSet {
        if pizzaInINches >= 18 {
        print("Invalid size specified, pizza size set to max value of 18")
        pizzaInINches = 18
        print(oldValue)
        }
    }
}
// will set value; didSet code will trigger as pizzaInInches property is changed to 24
pizzaInINches = 24
print(pizzaInINches)


// computed property
var numberOfSlices: Int {
    return pizzaInINches - 4
}

// Getter to execute code and get value of numberofSlices
var numberOfSlices2: Int {
    get {
        return pizzaInINches - 4
    }
// Setter to execute code when value of numberOfSlices2 is updated
    set {
        print("numberOfSlices now has a new value which is \(newValue)")
    }
}



print(numberOfSlices)



