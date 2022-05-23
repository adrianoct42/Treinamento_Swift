https://www.hackingwithswift.com/100/1

// var --> Uma variável qualquer, pode mudar a vontade.
// A linguagem é typesafe!
var str = "Hello, playground"
var str = "Goodbye!"
// Ele deduziu que é uma string.

var age = 38
// Ele deduziu que é um int.
// Não é possível mudar para uma STRING agora!

// Se quiser que uma string continue sendo digitada na
// próxima linha, use """ no início e """ no fim, além dos \
// Exemplo:
"""
This goes \
over multiple \
lines.
""" // Output: This goes over multiple lines.

var pi = 3.41414141
// Swift automaticamente o coloca como DOUBLE.
// Eles não podem realizar operações com OUTROS TIPOS, como um INT.
var awesome = true
// Swift automaticamente o coloca como BOOL.

// É possível interpolar strings com variáveis! Exemplo:
var score = 96
var frase = "Your score was \(score)"
// Output: Your score was 85

// Let, diferente de var, deixa uma variável CONSTANTE, IMUTÁVEL.
let taylor = "swift"

// Swift permite que você coloque um tipo EXPLICITAMENTE, caso queira.
// Exemplo:
let album: String = "Reputation"
let year: Int = 1996
let resposta_universo: Double = 42.2
let vagrat: Bool = true