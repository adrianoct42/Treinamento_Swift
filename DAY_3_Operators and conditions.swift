let firstScore = 12
let secondScore = 4
let total = firstScore + secondScore
let total2 = firstScore / secondScore
let total3 = firstScore % secondScore // Resto da divisão!


// Operator Overloading
let meaningOfLife = 42
// Podemos adicionar strings dessa forma:
let fakers = "Fakers gonna "
let action = fakers + "fake"
// Também podemos fazer isso com arrays!
let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf // Output: ["John", "Paul", "George", "Ringo"]
// Lembre-se que SWIFT é uma liguagem TYPESAFE, significa que não
// podemos adicionar um INT com um DOUBLE.


// Compound Operatos
var score = 95
score -= 5 // Output: 90
var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards" // Output: The rain in Spain falls mainly on the Spaniards"


// Comparison Operators
// == : Igualdade
// != : Diferente
// > ou >= : Maior ou maior igual que
// < ou <= : Menor ou menor igual que


// Conditions
let firstCard = 11
let secondCard = 10
if firstCard + secondCard == 2 {
    print("Aces! Lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}
let age1 = 12
let age2 = 21
if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}
if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}


// Ternary Operator
let firstCard = 11
let secondCard = 10
// Trata-se de um if else embutido numa única linha:
print(firstCard == secondCard ? "Cards are the same" : "Cards are different")
// Esse código é equivalente à:
if firstCard == secondCard {
    print("Cards are the same")
} else {
    print("Cards are different")
}


// Switch statements
let weather = "sunny"
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}
// Default seria o "else"
// Swift will only run the code inside each case. 
// If you want execution to continue on to the next case,
// use the fallthrough keyword like this:
let weather = "sunny"
switch weather {
case "rain":
    print("Bring an umbrella")
    fallthrough
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}


// Range
let score = 85
switch score {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}
// ..< Siginifica que o último valor, 50, não está incluso.
// Se usarmos ... em vez de ..< o valor 50 estaria incluso!