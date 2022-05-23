// Handling missing data
// É uma variável que não carrega nada no momento, mas poderá receber um int.
// Posteriormente atribuimos à ela o valor 38.
var age: Int? = nil
age = 38


// Unwrapping optionals
var name: String? = nil
if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}
// If name holds a string, it will be put inside unwrapped as a
// regular String and we can read its count property inside the condition.
// Alternatively, if name is empty, the else code will be run.


// Unwrapping with guard
func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }
    print("Hello, \(unwrapped)!")
}


// Guard let
func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }
    print("Hello, \(unwrapped)!")
}
// Using guard let lets you deal with problems at the start
// of your functions, then exit immediately. This means the rest of
// your function is the happy path – the path your
// code takes if everything is correct.


// Force unwrapping
let str = "5"
let num = Int(str)!
// Swift will immediately unwrap the optional and make num a regular
// Int rather than an Int?. But if you’re wrong – if str was something
// that couldn’t be converted to an integer – your code will crash.
// As a result, you should force unwrap only when you’re sure it’s
// safe – there’s a reason it’s often called the crash operator.


// Implicitly unwrapped optionals
// Like regular optionals, implicitly unwrapped optionals might
// contain a value or they might be nil. However, unlike regular
// optionals you don’t need to unwrap them in order to use them:
// you can use them as if they weren’t optional at all.
// Implicitly unwrapped optionals are created by adding an
// exclamation mark after your type name, like this:
let age: Int! = nil
// Because they behave as if they were already unwrapped, you don’t need
// if let or guard let to use implicitly unwrapped optionals.
// However, if you try to use them and they have no value –
// if they are nil – your code crashes.
// Implicitly unwrapped optionals exist because sometimes a variable
// will start life as nil, but will always have a value before you need to use it.
// Because you know they will have a value by the time you need them, it’s
// helpful not having to write if let all the time.
// That being said, if you’re able to use regular optionals
// instead it’s generally a good idea.


// Nil coalescing
func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}
// If we call that with ID 15 we’ll get back nil because the user isn’t
// recognized, but with nil coalescing we can provide
// a default value of “Anonymous” like this:
let user = username(for: 15) ?? "Anonymous"
// That will check the result that comes back from the
// username() function: if it’s a string then it will be unwrapped and placed 
// into user, but if it has nil inside then “Anonymous” will be used instead.


// Optional chaining
let names = ["John", "Paul", "George", "Ringo"]
// We’re going to use the first property of that array,
// which will return the first name if there is one
// or nil if the array is empty. We can then call uppercased()
// on the result to make it an uppercase string:
let beatle = names.first?.uppercased()
// That question mark is optional chaining – if first returns
// nil then Swift won’t try to uppercase it, and will set beatle to nil immediately.


// Optional try
// CÓDIGO ANTIGO:
enum PasswordError: Error {
    case obvious
}
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}
// JEITO NOVO, UMA ALTERNATIVA PARA O TRY:
if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}
// OUTRA ALTERNATIVA:
try! checkPassword("sekrit")
print("OK!")


// Failable initializers
// CÓDIGO ANTIGO:
let str = "5"
let num = Int(str)
// You can write these in your own structs and classes
// by using init?() rather than init(), and return nil if something goes wrong.
// The return value will then be an optional of your type,
// for you to unwrap however you want.
//
// As an example, we could code a Person struct that must
// be created using a nine-letter ID string. If anything other
// than a nine-letter string is used we’ll return nil,
// otherwise we’ll continue as normal.
struct Person {
    var id: String
    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}


// Typecasting
// Swift must always know the type of each of your variables,
// but sometimes you know more information than Swift does.
// For example, here are three classes:
class Animal { }
class Fish: Animal { }
class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}
// We can create a couple of fish and a couple of dogs,
// and put them into an array, like this:
let pets = [Fish(), Dog(), Fish(), Dog()]
// Swift can see both Fish and Dog inherit from the Animal class,
// so it uses type inference to make pets an array of Animal.
// If we want to loop over the pets array and ask
// all the dogs to bark, we need to perform a typecast:
// Swift will check to see whether each pet is a Dog object,
// and if it is we can then call makeNoise().
// This uses a new keyword called as?, which returns an optional:
// it will be nil if the typecast failed, or a converted type otherwise.
//
// Here’s how we write the loop in Swift:
for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}