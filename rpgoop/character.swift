//
//  character.swift
//  rpgoop
//
//  Created by Mike Piatin on 10/03/2016.
//  Copyright © 2016 Aurora Software. All rights reserved.
//

import Foundation

class Character {
    
    private var _hp: Int = 100
    private var _attackPwr: Int = 10
    
    var attackPwr: Int {
        // protecting the data, making it unaccessable
        get {
            return _attackPwr
        }
    }
    
    var hp: Int {
        get {
            return _hp
        }
    }
    
    var isAlive: Bool {
        // property checks if the character is still alive
        get {
            if hp <= 0 {
                return false
            } else {
                return true
            }
        }
    }
    
    init(startingHp: Int, attackPwr: Int) {
        // initialiser
        self._hp = startingHp
        self._attackPwr = attackPwr
    }
    
    func attemptAttack(attackPwr: Int) -> Bool {
        // on successful attack, the hp is decreasing by the attackPwr points
        self._hp -= attackPwr
        
        return true
    }
    
}