//
//  Game.swift
//  fightGame
//
//  Created by WANDIANGA on 18/07/2019.
//  Copyright © 2019 WANDIANGA. All rights reserved.
//

import Foundation

class Game {
    
    var player1 : Player?
    var player2 : Player?
    
    
    //    2/ Readline : Yes or not ?
    
    // 3/ If no -> Revenir à "Are you ready ? "/; If yes continuer
    
    // 4/ Readline : Choix Joueur 1 ou 2 ? Même chose pour le joueur 2
    
    
    func startGame()  {
       
        print("Are you ready ? Yes or No ")
        
        let response = readLine()
        
        if response == "Yes" {
            
            choixJoueur()
           
            
        } else {
            
           
            startGame()
        }
    }
    
    func choixJoueur() {
        
        print("Choix Joueur : 1 or 2 ?")
        
        let response = readLine()
        
        if response == "1" {
            
            print("Welcome Joueur 1")
            
        } else if response == "2"   {
            
            print("Welcome Joueur 2")
            
        } else {
            
            print("Nous ne comprenons pas vos choix")
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



