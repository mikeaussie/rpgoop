//
//  kimara.swift
//  rpgoop
//
//  Created by Mike Piatin on 10/03/2016.
//  Copyright © 2016 Aurora Software. All rights reserved.
//

import Foundation

class Kimara: Enemy {
    // this enemy has the immunity. any attck below 15 adds to his life
    
    let IMMUNE_MAX = 15
    
    override var loot: [String] {
        // gives this enemy a different loot
        return ["Tough Hide", "Kimara Venom", "Rare Trident"]
        
    }
    
    override var type: String {
        // gives this enemy a different name
        return "Kimara"
        
    }
    
    override func attemptAttack(attackPwr: Int) -> Bool {
        // if attack exceeds the immune max, call for the parent function (original function)
        if attackPwr >= IMMUNE_MAX {
            return super.attemptAttack(attackPwr)
        } else {
            return false
        }
    }
    
}