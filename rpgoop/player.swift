//
//  player.swift
//  rpgoop
//
//  Created by Mike Piatin on 10/03/2016.
//  Copyright © 2016 Aurora Software. All rights reserved.
//

import Foundation

class Player: Character {
    
    private var _name: String = "Player"
    
    var name: String {
        get {
            return _name
        }
    }
    
    private var _inventory = [String]()
    
    var inventory: [String] {
        get {
            return _inventory
        }
    }
    
    convenience init(name: String, hp: Int, attackPwr: Int) {
        self.init(startingHp: hp, attackPwr: attackPwr)
        
        _name = name
    }
    
    
    
    
}