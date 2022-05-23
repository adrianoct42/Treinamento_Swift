// Parece função lambda!
// Creating Basic Closures
// Cria uma função sem nome que fica atrelada a variável "driving"
let driving = {
    print("I'm driving in my car")
}
// Para chamá-la, basta escrever:
driving()


// Accepting Parameters in a Closure
// O mesmo do anterior, mas agora ela aceita um parâmetro de nome place.
let driving2 = { (place: String) in
    print("I'm going to \(place) in my car")
}
driving2("London")


// Returning values from a closure
// A closure agora trabalha com um RETURN de STRING:
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
// Atrelamos a uma variável e mandamos printar:
let message = drivingWithReturn("London")
print(message)


// Closure as Parameters
// Difícil de explicar e não vejo muito uso de primeira instância...
// Mas vai aqui um exemplo com o OUTPUT:
let driving = {
    print("I'm driving in my car")
}
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travel(action: driving)
// Output:
// I'm getting ready to go.
// I'm driving in my car
// I arrived!


// Trailing Closure Syntax
// O output é o mesmo do anterior, mas nao entendi PORQUE FUNCIONA.
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travel {
    print("I'm driving in my car")
}