import UIKit

var prenoms = ["Matthieu", "Athena", "Charly", "Emily", "Claudius", "Jean Eudes"]

let phrase = "Salut les codeurs"

let dict: [Int: String] = [
    1: "Paris",
    2: "Marseille",
    3: "Toulon",
    4: "Nice",
    5: "Lille",
    6: "Bordeaux",
    7: "Toulouse",
    8: "Oran",
    9: "Charleroi",
    10: "Lausanne",
    11: "Tunis",
    12: "Quebec"
]

//Boucle for in
for prenom in prenoms {
    print("Salut je suis \(prenom)")
}

for lettre in phrase {
    print(lettre)
}

for (int, name) in dict {
    print("Ville numéro: \(int) est: \(name)")
}

//Gamme ou Range
for x in 0..<10 {
    print(x)
}

for index in 0..<prenoms.count {
    print(prenoms[index])
}

//Stride
let firstOlympics = 1908
let lastOlympics = 2024
let recurrence = 4

for anneeOlympique in stride(from: firstOlympics, to: lastOlympics, by: recurrence) {
    print(String(anneeOlympique) + " est une année olympique")
}

for anneeOlympique in stride(from: firstOlympics, through: lastOlympics, by: recurrence) {
    print(anneeOlympique)
}

//forEach

prenoms.forEach { p in
    print("Je suis " + p)
}

//While et Repeat while

var myIntForWhile = 10

while myIntForWhile < 10 {
    print("Ma boucle continue car je suis au numéro: \(myIntForWhile)")
    myIntForWhile += 1
}

//repeat {
//    print("Ma boucle continue car je suis au numéro: \(myIntForWhile)")
//    myIntForWhile += 1
//} while myIntForWhile < 10
            
            

var foundClaudius = false
var index = 0

while !foundClaudius {
    let prenom = prenoms[index]
    if prenom == "Claudius" {
        foundClaudius = true
    }
    print(foundClaudius ? "Je l'ai trouvé à l'index: \(index)" : "Toujours pas la")
    index += 1

}


