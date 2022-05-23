// Classes
// São semelhantes aos Structs, mas não iguais.
// Em classes por exemplo, é necessário sempre criar um initializer!
class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}


// Class inheritance
class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}


// Overriding methods
// Polimorfismo? Parece!
class Dog {
    func makeNoise() {
        print("Woof!")
    }
}
class Poodle: Dog {
    override func makeNoise() {
        print("Yip!")
    }
}


// Final classes
// São classes que nao podem ter seus métodos herdados.
final class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}


// Copying objects
// When you copy a class, both the original and the copy point
// to the same thing, so changing one does change the other.
class Singer {
    var name = "Taylor Swift"
}
var singer = Singer()
print(singer.name) // Output: Taylor Swift
var singerCopy = singer
singerCopy.name = "Justin Bieber"
// Because of the way classes work, both singer and singerCopy
// point to the same object in memory, so when we print
// the singer name again we’ll see “Justin Bieber”:
print(singer.name) // Output: Justin Bieber


// Deinitializers
class Person {
    var name = "John Doe"
    init() {
        print("\(name) is alive!")
    }
    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    deinit {
    print("\(name) is no more!")
    }
}
for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}
// Output:
// John Doe is alive!
// Hello, I'm John Doe
// John Doe is no more!
// John Doe is alive!
// Hello, I'm John Doe
// John Doe is no more!
// John Doe is alive!
// Hello, I'm John Doe
// John Doe is no more!


// Mutability
class Singer {
    let var name = "Taylor Swift"
}
let taylor = Singer()
taylor.name = "Ed Sheeran"
print(taylor.name)
// If you want to stop that taylor receives new names,
// you need to make the property constant, by putting
// a "let" before var name, just as shown in line 97.