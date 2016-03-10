//
//  DevilWizard.swift
//  rpgoop
//
//  Created by Mike Piatin on 10/03/2016.
//  Copyright © 2016 Aurora Software. All rights reserved.
//

import Foundation

class DevilWizard: Enemy {
    
    override var loot: [String] {
        return ["Magic Wand", "Dark Amulet", "Salted Pork"]
        
    }
    
    override var type: String {
        return "Devil Wizard"
        
    }
    
}