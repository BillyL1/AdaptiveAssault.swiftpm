//
//  Enemy.swift
//  AdaptiveAssault
//
//  Created by Billy Linker on 4/19/24.
//

import Foundation
import SwiftUI

class Enemy {
    var xpos: CGFloat
    var ypos: CGFloat
    var health: Int
    //base enemy health: 100
    var type: any Shape
    
    init(xpos: CGFloat, ypos: CGFloat, health: Int, type: any Shape) {
        self.xpos = xpos
        self.ypos = ypos
        self.health = health
        self.type = type
        }
    }

class enemy1: Enemy {
    override init(xpos: CGFloat, ypos: CGFloat, health: Int, type: any Shape) {
        super.init(xpos: xpos, ypos: ypos, health: health, type: Rectangle())
    }
}

class enemy2: Enemy {
    override init(xpos: CGFloat, ypos: CGFloat, health: Int, type: any Shape) {
        super.init(xpos: xpos, ypos: ypos, health: health, type: Circle())
    }
}

class enemy3: Enemy {
    override init(xpos: CGFloat, ypos: CGFloat, health: Int, type: any Shape) {
        super.init(xpos: xpos, ypos: ypos, health: health, type: Capsule(style: .circular))
    }
}
