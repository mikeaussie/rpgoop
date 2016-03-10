//
//  enemy.swift
//  rpgoop
//
//  Created by Mike Piatin on 10/03/2016.
//  Copyright © 2016 Aurora Software. All rights reserved.
//

import Foundation

class Enemy: Character {
    
    var loot: [String] {
        return ["Rusty Dugger", "Cracked Buckler"]
        
    }
    
    var type: String {
        return "Grunt"
        
    }
    
    func dropLoot() -> String? {
        // the function checks if NOT alive, and then generates a random number between 0 and the loot.count
        // the function may return something or not
        // therefore the "?" is used
        
        if !isAlive {
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            return loot[rand]
            }
        return nil
    }
    
    
    
}