import UIKit

class Lamp {
    //Propriétés
    
    private var typeInterrupteur: String
    var intensite: Int
    var hauteur: Double
    var isOn = false
    
    var intensiteString: String {
        return "\(intensite)W"
    }
    
    var interrupteur: String {
        get {
            return "Vous avez une lampe qui a un interrupteur \(typeInterrupteur)"
        }
        set(newValue) {
            if newValue != "" {
                typeInterrupteur = newValue
            }
        }
    }
    
    var abatJour: String = "Le vieux de mamie"{
        willSet(newValue) {
            print("Nous allons changer et obtenir : \(newValue)")
        }
        didSet {
            print("Avant nous avions : \(oldValue), et maintenant nous avons \(abatJour)")
        }
    }
    //Init
    init(intensite: Int, hauteur: Double, interrupteur: String) {
        self.intensite = intensite
        self.hauteur = hauteur
        self.typeInterrupteur = interrupteur
    }
    //Méthodes
    
    func allumerOuEteindre() {
        isOn.toggle()
        print("La lampe est : \(isOn ? "allumée" : "éteinte")")
    }
    
}

class Solaire: Lamp {
    var autonomie: Int
    var dureeDeCharge: Int
    
    init(intensite: Int, hauteur: Double, interrupteur: String, autonomie: Int, dureeDeCharge: Int) {
        self.autonomie = autonomie
        self.dureeDeCharge = dureeDeCharge
        super.init(intensite: intensite, hauteur: hauteur, interrupteur: interrupteur)
    }
    
    override func allumerOuEteindre() {
        super.allumerOuEteindre()
        print("Merci au soleil de nous fournir de l'énergie")
    }
}

struct Maison {
    //Propriétés
    var superficie: Double
    var nombreEtage: Int
    var indiceIsolation: String
    var nombreDeChambres: Int
    var cuisineSeparee: Bool
    
    var etages: Int {
        get {
            return nombreEtage
        }
        set(newValue) {
            if newValue <= nombreEtage {
                nombreEtage = newValue
            } else {
                print("Bien essayé coquin")
            }
        }
    }
    
    var chambresCalculees: Int {
        get {
            return nombreDeChambres
        }
        set(nouveauNombreDeChambres) {
            nombreDeChambres = nouveauNombreDeChambres
        }
    }
    
    var superficieString: String {
        get {
            return "La maison a une superficie de \(superficie)m2"
        }
    }
    //Init
    //Méthodes
    func fermerTousLesVolets() {
        print("Ca y est les volets sont fermés")
    }
    
    mutating func fermerCuisine() {
        cuisineSeparee = true
        print("Ma cuisine est fermée")
    }
}

extension Maison {
    var presentationDeMaMaison: String {
        return "Ma maison est sur \(nombreEtage) étages et fait \(superficie) m2"
    }
}

extension Double {
    func toStringOnly2Digits() -> String {
        let str = String(format: "%.2f", self)
        return str
    }
}

extension String {
    func toInt() -> Int{
        let newInt = Int(self)
        guard let intNonOptionnal = newInt else { return 0}
        return intNonOptionnal
    }
}

let lampeIkea = Lamp(intensite: 12, hauteur: 50, interrupteur: "Classique")
var maMaisonSurLaCote = Maison(superficie: 75, nombreEtage: 1, indiceIsolation: "C", nombreDeChambres: 2, cuisineSeparee: true)
var maisonAuSki = Maison(superficie: 80, nombreEtage: 2, indiceIsolation: "A", nombreDeChambres: 3, cuisineSeparee: false)
let lampeDeCuisine = Lamp(intensite: 40, hauteur: 3, interrupteur: "Va et vient")
print(lampeIkea.hauteur)
lampeIkea.hauteur = 50
print(lampeIkea.hauteur)

print(maMaisonSurLaCote.superficie)
maMaisonSurLaCote.superficie = 145
print(maMaisonSurLaCote.superficie)
print(lampeIkea.intensiteString)
print(maisonAuSki.superficieString)
print(maMaisonSurLaCote.chambresCalculees)
maMaisonSurLaCote.chambresCalculees = 5
print(maMaisonSurLaCote.chambresCalculees)

maisonAuSki.etages = 4
print(maisonAuSki.etages)

print(lampeDeCuisine.interrupteur)
lampeDeCuisine.interrupteur = "HomeKit"
print(lampeDeCuisine.interrupteur)
lampeDeCuisine.interrupteur = ""
print(lampeDeCuisine.interrupteur)
print(lampeIkea.abatJour)

lampeIkea.abatJour = "En Or"
lampeIkea.allumerOuEteindre()
lampeIkea.allumerOuEteindre()
//print(lampeIkea.abatJour)
maisonAuSki.fermerTousLesVolets()
maisonAuSki.fermerCuisine()
let maSolaire = Solaire(intensite: 3, hauteur: 32, interrupteur: "Aucun", autonomie: 8, dureeDeCharge: 12)
maSolaire.allumerOuEteindre()
print(maisonAuSki.presentationDeMaMaison)

let d = 3.43455723454
print(d)
print(d.toStringOnly2Digits())
let testInt = "3.14"
print(testInt.toInt())

enum Boussole: Int, CaseIterable {
    case nord = 3
    case sud = 23
    case est = 78
    case ouest = 45
}

enum ClubsDeFootPaca: String {
    case marseille = "OM", toulon = "SCT", nice = "OGCN", monaco = "ASMFC", martigues = "MFC", aubagne = "AFC", frejus = "FSRFC"
}

let positionBoussole = Boussole.sud

switch (positionBoussole) {
case Boussole.sud: "On est au sud"
case Boussole.nord: "on est au nord"
case Boussole.est : "On est a l'est"
case Boussole.ouest: "On est à l'ouest"
}

let str: String = ClubsDeFootPaca.aubagne.rawValue
let i: Int = Boussole.ouest.rawValue

if let value = Boussole(rawValue: 23) {
    print(value)
}

let collect = Boussole.allCases

collect.forEach { element in
    print(element.rawValue)
}

