import UIKit

var greeting = "Hello, playground"


//Fonction Basique
func salutations() {
    print("Bienvenue dans l'apprentissage des fonctions")
}

salutations()
var score = 0

updateScore()

func updateScore() {
    score += 1
    print("Le score actuel est de : \(score), félicitations")
}

updateScore()
updateScore()
updateScore()

//Fonction avec Param

func checkPassSanitaire(isValid: Bool) {
    let phrase = isValid ? "Vous pouvez entrer" : "Désolé vous avez besoin du pass"
    print(phrase)
}

checkPassSanitaire(isValid: true)
checkPassSanitaire(isValid: false)

func salutAvecNom(_ nom: String) {
    print("Salut \(nom)")
}

salutAvecNom("Athena")

func presentation(nom: String, age: Int, genre: Bool) {
    let genreString = genre ? "une femme" : "un homme"
    let phrase = "Salut je m'appelle \(nom), j'ai \(age) ans et je suis \(genreString)"
    print(phrase)
}

presentation(nom: "Matthieu", age: 36, genre: false)

//Fonction avec retour

func allerALaPiscine(saison: String, heure: Int) -> Bool {
    if saison == "été" {
        if heure > 8 && heure < 19 {
            print("C'est bon")
            return true
        }
        print("Pas la bonne heure")
        return false
    }
    print("pas la bonne saison")
    return false
}

allerALaPiscine(saison: "été", heure: 12)
allerALaPiscine(saison: "hiver", heure: 13)
allerALaPiscine(saison: "été", heure: 21)
let b = allerALaPiscine(saison: "été", heure: 15)
print(b ? "Oui" : "Non")

func presentationAvecRetour(nom: String, age: Int, genre: Bool) -> String {
    let genreString = genre ? "une femme" : "un homme"
    let phrase = "Salut je m'appelle \(nom), j'ai \(age) ans et je suis \(genreString)"
    return phrase
}

let newPhrase = presentationAvecRetour(nom: "Jojo", age: 47, genre: false)
print(newPhrase)
