import UIKit

//Conditions

//IF

var speed = 85

if speed > 90 {
    print("Vas-y mollo tu roules trop vite")
}

var isSunny = false

if isSunny {
    print("Prends tes lunettes de soleil")
}

//IF ELSE

var isAuth : Bool = false

if isAuth {
    print("Passons au controller suivant")
} else {
    print("Authentifiez vous s'il vous plait")
}

//IF, ELSE IF, ELSE

var age = 18

if age < 18 {
    print("Application montre les dessins animés")
} else if age < 30 {
    print("Application montre les soirées du coin")
} else if age < 40 {
    print("Application montre les opportunités d'emploi")
} else if age < 50 {
    print("Application montre le programme TV")
} else {
    print("Application vacances hors période scolaire")
}

//Switch

var marqueDeVoiture = "renault"

switch marqueDeVoiture {
case "Fiat": "J'espère que c'est une 500"
case "Renault", "Peugeot": "Tous les jours un bruit nouveau"
case "Seat": "Je roule à l'espagnole"
case "BMW", "Wolksvagen", "Mercedes": "La qualité Allemande"
case "Opel": "T'es sur que c'est une allemande?"
default: "Autre"
}

//Guard else

func checkAge() {
    guard age >= 18 else { return }
    print("Je suis majeur")
}
checkAge()

//Control Flow
var mots = ["Tomate", "Cerise", "Chaise", "Lunettes", "Pierre", "Feuille", "Placard"]
var containsA : [String] = []

for mot in mots {
    if !mot.contains("a") {
        continue
    }
    containsA.append(mot)
}

print(containsA)

for x in 0...100 {
    if x == 33 {
        break
    }
    print(x)
}


var ville = "Marseille"

switch ville {
case "Marseille": print("MARS")
    fallthrough
case "Toulon": print("Pilou pilou")
case "Toulouse": print("La ville rose")
default: break
}

//Deballer un optionnel

var nom: String?
//nom = "Titi"

//if !
if nom != nil {
    print(nom!)
}
//if let
if let newName = nom {
    print(newName)
}

//Guard !
func checkName() {
    guard nom != nil else { return }
    print(nom!)
}
checkName()
//Guard let
func checkLet() {
    guard let new = nom else { return }
    print(new)
}

checkLet()
