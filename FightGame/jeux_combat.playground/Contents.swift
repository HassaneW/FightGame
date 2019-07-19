import UIKit
import Foundation

enum ClassePersonnage {
    case Archer
    case Guerrier
    case Arme
}

enum NomArme {
    case Epee
    case Arc
    case Sceptre
}

class Personnage {
    
    var nom : String
    var classePersonnage : ClassePersonnage
    var vie : Int
    var arme : Arme
    
    
    init(nom : String, classePersonnage : ClassePersonnage, vie : Int, arme : Arme) {
        self.nom = nom
        self.classePersonnage = classePersonnage
        self.arme = arme
        self.vie = vie
    }
    
    // Fonction Double puissance Arme
    func augmenteArme(puissanceArme : Arme)  {
        
        puissanceArme.perteDeVie = puissanceArme.perteDeVie + self.arme.perteDeVie
        
    }
    // Fonction augmenter arme+5
    func armePlusCinq(puissanceArme : Arme)  {
        
        puissanceArme.perteDeVie = puissanceArme.perteDeVie + 5
        
    }
    
    func armehtr(tableauArme : [Arme]) {
        
        // Choisir l'arme la plus évoluer
        
        var nouvelArme = Arme(nomArme: NomArme.Epee, perteDeVie: 0)
        
        var armeActuel = 0
        
        for arme in tableauArme {
            
            if arme.perteDeVie > armeActuel {
                
                armeActuel = arme.perteDeVie
                
                nouvelArme = arme
            }
        }
        
        print("Ma nouvelle arme plus puissante est : \(nouvelArme.nomArme) avec \(nouvelArme.perteDeVie) points")
        
        
    }
    
    // fonction attaquer
    
    func attack(adversaire : Personnage) -> Personnage {
        
        adversaire.vie = adversaire.vie - self.arme.perteDeVie
        
        return adversaire
    }
    
    // Obligation d'attaquer et désigner la vainqueur
    
    func combat(adversaire: Personnage) {
        
        while adversaire.vie > 0 && self.vie > 0 {
            
            print("A vous de Jouer \(self.nom)? Vos points de vie sont de \(self.vie)")
            
            self.attack(adversaire: adversaire)
            
             print("A vous de Jouer \(adversaire.nom)? Vos points de vie sont de \(adversaire.vie) points")
            
            adversaire.attack(adversaire: self)
            
            if adversaire.vie <= 0 {
                print("Le vainqueur est : \(self.nom) avec \(self.vie) points de vie restantes")
                
            } else if self.vie <= 0 {
                print("Le vainqueur est : \(adversaire.nom) avec \(adversaire.vie) points de vie restantes")
                
            } else if self.vie == adversaire.vie {
                print("Match NUl")
            }
            
        }
    }

}


class Arme {
    
    var nomArme : NomArme
    var perteDeVie : Int
    
    
    init(nomArme : NomArme, perteDeVie : Int) {
        self.nomArme = nomArme
        self.perteDeVie = perteDeVie
    }
    
}


var epee = Arme(nomArme: .Epee, perteDeVie: 20 )
var arc = Arme(nomArme: NomArme.Arc, perteDeVie: 10)
var sceptre = Arme(nomArme: NomArme.Sceptre, perteDeVie: 300)

var joueur1 = Personnage(nom: "KOIKE", classePersonnage: .Guerrier, vie: 350, arme: epee)

var joueur2 = Personnage(nom: "JUIN", classePersonnage: ClassePersonnage.Archer, vie: 300, arme: arc)




joueur1.combat(adversaire: joueur2)


var tableauArme = [Arme]()
tableauArme.append(epee)
tableauArme.append(arc)
tableauArme.append(sceptre)

// Nom et Puissance arme
for arme in tableauArme {
    print("Arme : \(arme.nomArme) et puissance arme : \(arme.perteDeVie) points")
}

// Choisir l'arme la plus évoluer

var nouvelArme = Arme(nomArme: NomArme.Epee, perteDeVie: 0)

var armeActuel = 0

for arme in tableauArme {
    
    if arme.perteDeVie > armeActuel {
        
        armeActuel = arme.perteDeVie
        
        nouvelArme = arme
    }
}

print("Ma nouvelle arme plus puissante est : \(nouvelArme.nomArme) avec \(nouvelArme.perteDeVie) points")



// Fonction Double puissance arme
joueur2.augmenteArme(puissanceArme: arc)
joueur2.arme.perteDeVie

// Fonction augmenter puissance arme + 5
joueur2.armePlusCinq(puissanceArme: arc)
joueur2.arme.perteDeVie

// Fonction attack
joueur1.vie
joueur2.attack(adversaire: joueur1)
joueur1.vie

// Fonction combat = Refaire fonction
joueur1.combat(adversaire: joueur2)
joueur2.vie

// Fonnction designe Vainqueur
//joueur1.designeVainqueur(adversaire: joueur2)
joueur1.vie

