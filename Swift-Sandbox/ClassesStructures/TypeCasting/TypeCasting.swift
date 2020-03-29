// Keywords: is, as!, as?, as, Any

import Foundation

class Animal {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Human: Animal {
    func code() {
        print("Typing away...")
    }
}

class Fish: Animal {
    func breathUnderWater() {
        print("Breathing under water.")
    }
}

let vlad = Human(name: "Vlad")
let dima = Human(name: "Dima")
let nemo = Fish(name: "Nemo")
let numb = 12

let neighbours: [Any] = [vlad, dima, nemo, numb]

// Keyword (is) used for type checking

if neighbours[0] is Human {
    print("First Neighbour is Human")
}

if neighbours[2] is Human {
    print("Third Neighbour is Fish")
}

func findNemo(from animals: [Any]) {
    for animal in animals {
        if animal is Fish {
            print("We found Fish Nemo!")
            // (as!) only when you are sure that the downcast will always succeed.
            let fish = animal as! Fish
            fish.breathUnderWater()
            print("Type of fish variable is '\(type(of: fish))'")
            // (as) keyword by itself is simply used to raise a object to its superclasses type.
            let animalFish = fish as Animal
            if animalFish is Animal {
                print("Hello from animalFish as Animal type")
            }
        } else if animal is Int {
            print("We found Int in Animals!")
        }
    }
}

findNemo(from: neighbours)

// (as?) when you are not sure if the downcast will succeed.
if let fish = neighbours[1] as? Fish {
    fish.breathUnderWater()
} else {
    print("Cating has failed")
}
