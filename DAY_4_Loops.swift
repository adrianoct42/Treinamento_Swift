// For Loops
let count = 1...10
for number in count {
    print("Number is \(number)")
}
// Usando for em arrays:
let albums = ["Red", "1989", "Reputation"]
for album in albums {
    print("\(album) is on Apple Music")
}
// Se quiser usar um range sem depender de uma variável, pode-se usar:
print("Players gonna ")
for _ in 1...5 {
    print("play")
}
// Output: Players gonna play play play play play


// While Loops
var number = 1
while number <= 20 {
    print(number)
    number += 1
}
print("Ready or not, here I come!")


// Repeat Loops, basicamente um while que só checa a condição no fim, ou seja,
// Ele sempre é executado na priumeira tentativa.
var number = 1
repeat {
    print(number)
    number += 1
} while number <= 20
print("Ready or not, here I come!")


// Exiting Loops (Break), interrompe um loop do while.
var countDown = 10
while countDown >= 0 {
    print(countDown)
    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }
    countDown -= 1
}


// Exiting Multiple Loops
// Quando damos um nome para o loop mais externo, e o especificamos no break,
// todo o conjunto do loop será interrompido. Sem fazer isso, colocando um break comum,
// somente o loop do j, o mais interno, seria interrompido.
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}


// Skipping Items
// continue faz um skip. Nesse caso, ele irá pular qualquer número ímpar.
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }

    print(i)
}


// Infinite Loops
var counter = 0
while true {
    print("~ Silence ~")
    counter += 1
    if counter == 273 {
        break
    }
}