// Protocols
// São tipo as interfaces do Java!
protocol Identifiable {
    var id: String { get set }
}
struct User: Identifiable {
    var id: String
}
func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}


// Protocol inheritance
protocol Payable {
    func calculateWages() -> Int
}
protocol NeedsTraining {
    func study()
}
protocol HasVacation {
    func takeVacation(days: Int)
}
// We can now create a single Employee protocol that brings 
// them together in one protocol. We don’t need to add anything
// on top, so we’ll just write open and close braces:
protocol Employee: Payable, NeedsTraining, HasVacation { }


// Extensions
// Faz com que uma class, structure, enumeration, protocol ou
// alguma outra estrutura obtenha métodos novos para poderem
// ser abusados com novas funcionalidades!
extension Int {
    func squared() -> Int {
        return self * self
    }
}
let number = 8
number.squared()
extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}
number.isEven


// Protocol extensions
// Disseram que é uma junção de PROTOCOL com EXTENSIONS, mas honestamente fiquei confuso!
extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}
pythons.summarize()
beatles.summarize()


// Protocol-oriented programming
protocol Identifiable {
    var id: String { get set }
    func identify()
}
extension Identifiable {
    func identify() {
        print("My ID is \(id).")
    }
}
struct User: Identifiable {
    var id: String
}
let twostraws = User(id: "twostraws")
twostraws.identify()