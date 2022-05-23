// Writing Functions
// As funções Swift começam com a palavra-chave func, depois o nome da sua função,
// depois abre e fecha parênteses. Todo o corpo da
// sua função – o código que deve ser executado quando a função
// for solicitada – é colocado entre chaves.
func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails!
"""
    print(message)
}
// PS: Quando colocamos uma linha única com """ e uma final terminando também com """
// O Swift lerá aquilo junto com os "\n" ou "Enters", fazendo com que o código seja
// Mais fácil de se escrever, digamos que mais natural, já que não precisamos incluir
// diversos \n para uma quebra de linha acontecer.
// Output:
// Welcome to MyApp!
//
// Run this app inside a directory of images
// and MyApp willresize them all into thumbnails!


// Accepting Parameters
func square(number: Int) {
    print(number * number)
}
square(number: 8)
// Output: 64


// Returning Values, a função DEVOLVERÁ um valor dessa vez!
func square2(number: Int) -> Int {
    return number * number
}
let result = square2(number: 8)
print(result)


// Parameter Labels
// Externamente, você chamará a função com o to.
// Internamente, você trabalha com a variável name.
func sayHello(to name: String) {
    print("Hello, \(name)!")
}
sayHello(to: "Taylor")
// Output: Hello, Taylor!


// Variadic Functions
// Os ... após o Int significa que passaremos um número indeterminado de parâmetros
// Ao chamar a função square3.
func square3(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}
square3(numbers: 1, 2, 3, 4, 5)


// Throwing Functions
enum PasswordError: Error {
    case obvious
}
// Error é um tipo específico do Swift, para tratar erros.
// A função a seguir irá checar se a senha da pessoa é "password"
// Que é um caso de senha óbvia.
// O _ no parâmetro de password significa que o nome não importa, o programandor
// pode chamar a função sem escrever o nome que relacionaria à variável password do tipo String.
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}
// VAMOS TESTAR OS THROWS!
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}
// Se password for "password", como mostrado no try do exemplo da linha 76, 
// a mensagem You can't use that password será imprimida.
// Do contrário, imprimirá "That password is good!"


// Inout Parameters
// Caso voce queira que um PARÂMETRO PASSADO PELO SWIFT SEJA ALTERADO,
// Você pode fazer isso com o comando inout numa função, além
// de colocar um & ao lado da variável quando chamar a função, por exemplo:
func doubleInPlace(number: inout Int) {
    number *= 2
}
var myNum = 10 
doubleInPlace(number: &myNum)