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
            Text("Assult")
            Image(systemName: "shield")
                NavigationStack{
                    NavigationLink("Play", destination: Level1View())
                
            }
        }
    }
}
