//
//  ViewController.swift
//  rpgoop
//
//  Created by Mike Piatin on 10/03/2016.
//  Copyright © 2016 Aurora Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var printLbl: UILabel!
    
    @IBOutlet weak var playerHpLbl: UILabel!
    
    @IBOutlet weak var enemyHpLbl: UILabel!
    
    @IBOutlet weak var enemyImage: UIImageView!
    
    @IBOutlet weak var chestBtn: UIButton!
    
    var player: Player!
    var enemy: Enemy!
    var chestMessage: String?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        player = Player(name: "Dirty Laundry21", hp: 110, attackPwr: 20)
        
        generateRandomEnemy()
            
        playerHpLbl.text = "\(player.hp) HP"
        
        
    }
    
    func generateRandomEnemy() {
        
        let rand = Int(arc4random_uniform(2))
        
        if rand == 0 {
            enemy = Kimara(startingHp: 50, attackPwr: 12)
        } else {
            enemy = DevilWizard(startingHp: 60, attackPwr: 15)
            
        }
    }

    @IBAction func onChestTapped(sender: UIButton) {
        
        chestBtn.hidden = true
        printLbl.text = chestMessage
        
    //    NSTimer(timeInterval: 2.0, target: self, selector: "generateRandomEnemy", userInfo: nil, repeats: false)
        
    }

    @IBAction func onAttackTapped(sender: UIButton) {
        if enemy.attemptAttack(player.attackPwr) {
            printLbl.text = "Attacked \(enemy.type) for \(player.attackPwr) HP"
        } else {
            printLbl.text = "Attack was unsuccessful"
            
        }
        
        if let loot = enemy.dropLoot() {
                player.addItemToInventory(loot)
            
            
            chestMessage = "\(player.name) found \(loot)"
            chestBtn.hidden = false
            
        }
        
        if !enemy.isAlive {
            enemyHpLbl.text = ""
            printLbl.text = "Killed \(enemy.type)"
            enemyImage.hidden = true
            
        }
    }
    

}












