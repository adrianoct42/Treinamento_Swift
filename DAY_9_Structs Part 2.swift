// Initializers
// Init sao muito similares aos CONSTRUTORES de Java!
struct User {
    var username: String
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}
var user = User()
user.username = "twostraws"


// Self
// Usado para diferenciar parâmetros de propriedades.
struct Person {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        self.name = name // name EXTERNO = name INTERNO (do init)
    }
}
var pessoa = Person(name: "Juremis")


// Lazy
struct Person {
    var name: String
    lazy var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}
var ed = Person(name: "Ed")
ed.familyTree // Com esse acesso, agora a lazy é criada!


// Static properties and methods
// You can also ask Swift to share specific properties and methods
// across all instances of the struct by declaring them as static.
struct Student {
    static var classSize = 0
    var name: String
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}
let ed = Student(name: "Ed")
let taylor = Student(name: "Taylor")
print(Student.classSize)


// Access control
// Com o private na variável ID, significa que somente MÉTODOS DO STRUCT PERSON
// conseguem ler o id de alguém, nesse caso com a utiização da função IDENTIFY.  
struct Person {
    private var id: String
    init(id: String) {
        self.id = id
    }
    func identify() -> String {
        return "My social security number is \(id)"
    }
}
let ed = Person(id: "12345")