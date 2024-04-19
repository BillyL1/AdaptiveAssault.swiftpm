//
//  Enemy.swift
//  AdaptiveAssault
//
//  Created by Billy Linker on 4/19/24.
//

import Foundation
import SwiftUI

struct EnemyView: View {
    @State var xpos = 0.0
    @State var ypos = 0.0
    @State var health = 10
    var body: some View {
        Rectangle()
            .position(x: xpos, y: ypos)
            
        
    }
}
