import UIKit

/*
 
 * Projet doit être écrit dans un fichier swift Par rapport à ReadLine ?
 
 1/ Are you ready ? Print
 
 2/ Readline : Yes or not ?
 
 3/ If no -> Revenir à 1/; If yes continuer LIGNE 4
 
 4/ Readline : Choix Joueur 1 ou 2 ?
 
 5/ Choisissez 3 personnages, (1 perso est lié à une arme)
 
 6/ Choisissez 3 armes
 
 7/ Felicitation Joueur (ligne 4) vous avez choisi vos personnages et vos armes (Chaque personnage est lié à une arme)
 
 8/ Joueur nonsélectonné (ligne4)
 
 9/ Choisissez 3 personnages, (1 perso est lié à une arme)
 
 10/ Choisissez 3 armes
 
 11/ Felicitation Joueur nonsélectonné (ligne4) vous avez choisi vos personnages et vos armes (Chaque personnage est lié à une arme)
 
 12/ Readline : Voulez - vous attaquer ou recharger votre énergie Joueur 1 ? (Compter tour)
 
 13/ If attack choix perso joueur 1 qui attaque perso joueur 2.
 
 14/ Readline : Voulez - vous attaquer ou recharger votre énergie Joueur 2 ?
 
 15/  Les Attaque continue jusqu'à ce que tous les peronnages d'un joueur soit égal à 0
 
 15/ Fin partie
 
 Une fois la partie terminée (lorsque tous les personnages d’une équipe sont morts), tu affiches le joueur qui a gagné et les statistiques de jeu : le nombre de tours et la liste des personnages des deux équipes avec leurs propriétés (point de vie, etc.).

 
 */

// Question pour Ohmane  :  Projet doit être écrit dans un fichier swift Par rapport à ReadLine ? Lorsque je crée une instance pour arme ou Personnage, j'ai toutes les propriétés de la classe mére c'est incohérent dans le code, Pourquoi ? Et comment l'éviter ?

// Quels sont les questions que dois me poser pour réaliser un bon diagramme ? Pour créer les propriétés et les méthodes dans le diagramme ? Et être sûr qu'il correspond exactement à ce qu'on m'a demander ? (Outil de contrôle)



class Game {
    
    //    2/ Readline : Yes or not ?
    
    // 3/ If no -> Revenir à "Are you ready ? "/; If yes continuer
    
    // 4/ Readline : Choix Joueur 1 ou 2 ? Même chose pour le joueur 2
    
    
    func startGame(ready : String) -> String  {
        print("Are you ready ? ")
        
        let yes : String = ""
        
        // Readline : Yes or no
        
        if ready == yes {
            
            return "Choix Joueur 1 ou 2 ?"
            
        } else {
            
            return "Are you ready ?"
        }
        
        
            
    }
    
    func generateTeams() {
        
        //  5/ Joueur 1 ou 2 :Choisissez 3 personnages,(tableau mini = 1, maxi = 3)
        
    }
    func fight()  {
        /*
         
         12/ Readline : Voulez - vous attaquer ou recharger votre énergie Joueur 1 ? (Compter tour)
         
         13/ If attack choix perso joueur 1 qui attaque perso joueur 2.
         
         14/ Readline : Voulez - vous attaquer ou recharger votre énergie Joueur 2 ?
         
         */
        
        
    }
    
    func ShowWinner() {
        /*
         
         // 15/  Les Attaque continue jusqu'à ce que tous les peronnages d'un joueur soit égal à 0
         
         15/ Fin partie
         
         Une fois la partie terminée (lorsque tous les personnages d’une équipe sont morts), tu affiches le joueur qui a gagné et les statistiques de jeu : le nombre de tours et la liste des personnages des deux équipes avec leurs propriétés (point de vie, etc.).
         
         */
        
    }
        
   
}

class Player {
    var name : String
    var team : [Character]
    
    init(name : String, team : [Character]) {
        self.name = name
        self.team = team
    }
    
    
    
}

class Character {
    var name : String
    var life : Int
    var strenght : Int
    var weapon : Weapon
    
    init(name : String, life : Int, strenght : Int, weapon : Weapon) {
        self.name = name
        self.life = life
        self.strenght = strenght
        self.weapon = weapon
        
    }
     //  10/ Choisissez 3 armes
}

class Personnage : Character    {
    var warrior : String
    var dwarf : String
    var magus : String
    
    init(warrior : String, dwarf : String, magus : String, name: String, life: Int, strenght: Int, weapon: Weapon) {
        self.warrior = warrior
        self.dwarf = dwarf
        self.magus = magus
        super.init(name: name, life: life, strenght: strenght, weapon: weapon)
    }
}

class Weapon {
    var damage : Int
    
    init(damage : Int) {
        self.damage = damage
    }
}


class Arme : Weapon {
    var sword : String
    var axe : String
    
    init(sword : String, axe : String, damage : Int) {
        
        self.sword = sword
        self.axe = axe
        super.init(damage: damage)
    }
}


/*
 
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
 
*/
