//
//  Title.swift
//  AdaptiveAssault
//
//  Created by Austin Witt on 4/19/24.
//

import Foundation
import SwiftUI

struct Title: View {
    var body: some View {
        
        VStack {
            Text("Adaptive")
                .bold()
            Text("Assault")
                .bold()
            Image(systemName: "shield")
                NavigationStack{
                    NavigationLink("Play", destination: LevelSelectorView())
                    NavigationLink("HighScores", destination: HighScoreView())
                    NavigationLink("Towers", destination: TowersView())
            
            }
            
        }
    }
}
