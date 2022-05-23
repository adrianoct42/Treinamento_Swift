// Struct
struct Sport {
    var name: String
}
var tennis = Sport(name: "Tennis")
print(tennis.name) // Output: Tennis
// Podemos também mudar uma variável atrelada ao struct:
tennis.name = "Lawn tennis"


// Computed Properties
struct Sport {
    var name: String
    var isOlympicSport: Bool
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}
let chessBoxing = Sport(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus) // Output: Chessboxing is not an Olympic sport


// Property observers
// didSet fará com que cada vez que a variável amount tiver seu valor alterado
// que ela seja printada na tela!
struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}
var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100


// Methods
// São funções dentro de structs!
struct City {
    var population: Int

    func collectTaxes() -> Int {
        return population * 1000
    }
}
let london = City(population: 9_000_000)
london.collectTaxes()


// Mutating methods
struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}
// Because it changes the property, Swift will only allow that method
// to be called on Person instances that are variables:
var person = Person(name: "Ed")
person.makeAnonymous()


// Properties and methods of strings
let string = "Do or do not, there is no try."
print(string.count) // Retorna o numero de caracteres da string.
print(string.hasPrefix("Do")) // Retorna TRUE se os primeiros caracteres da String forem Do
print(string.uppercased()) // Retorna com CAPSLOCK
print(string.sorted()) // Coloca os caracteres em array.
// Strings have lots more properties and methods
// try typing string. to bring up Xcode’s code completion options.


// Properties and methods of arrays
var toys = ["Woody"]
print(toys.count) // Retorna o numero de itens do array.
toys.append("Buzz") // Adiciona Buzz ao array.
toys.firstIndex(of: "Buzz") // Retorna a posição do array que Buzz se localiza
print(toys.sorted()) // Organiza os itens em ordem alfabética
toys.remove(at: 0) // Remove a posição 0 do array, ou seja a PRIMEIRA POSIÇÃO.
// Arrays have lots more properties and methods
// try typing toys. to bring up Xcode’s code completion options.