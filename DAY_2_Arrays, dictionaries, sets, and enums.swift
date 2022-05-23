let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"
// Para construir um array de nome beatles seria:
let beatles = [john, paul, george, ringo]
// Para acessar um valor, basta colocá-lo em []. Exemplo:
beatles[0]
// Output: John Lennon (Swift começa a contagem em 0)
// Podemos explicitar o tipo do conteúdo do array:
var cities: [String] = ["London", "Paris", "New York"]


// Set armazena sem importar com a ordem.
// Não se pode ter duplicatas aqui dentro! Não é possível acessar os valores como em Arrays.
let colors = Set(["red", "green", "blue"])


// Tuplas não podem ter tipos diferentes nem mudar seu tamanho original.
// Tuplas podem ter seus valores alterados, mas não o tipo.
// Tuplas podem ter seus valores lidos. São criadas usando ().
var name = (first: "Taylor", last: "Swift")
// Para acessar os valores da tupla, pode-se usar tanto:
// name.0
// name.first
// name.1 ou name.last para o segundo valor!


// Dictionary, usados para armazenas chave-valor. Iniciam com [] e sua divisão é por :
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]
// Para ler, só usar:
heights["Taylow Swift"]


// Empty Collection (Dicionário, Array ou o que for)
// Exemplo de um DICIONÁRIO VAZIO E POSTERIORMENTE ACRESCENTADO:
var teams = [String: String]()
teams["Paul"] = "Red"
// Array vazio:
var results = [Int]()
// Set vazio:
var words = Set<String>()
var numbers = Set<Int>()


// ENUMS
enum Result {
    case success
    case failure
}
// Agora podemos escolher qual deles queremos chamar. Por exemplo:
let result2 = Result.success


// Associando valor com ENUM:
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}
let talking = Activity.talking(topic: "football")


// Se quisermos colocar um valor inicial que associa um case à algo, podemos fazer assim:
enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}
// mercury receberá 0, venus 1, earth 2... And so on.
// Que nos permite fazer:
let terra = Planet(rawValue: 2)
// A variável terra ganhará o valor earth.