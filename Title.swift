//
//  Title.swift
//  AdaptiveAssault
//
//  Created by Austin Witt on 4/19/24.
//

import Foundation
import SwiftUI

let logo = Image("TemporaryLogo")

struct Title: View {
    var body: some View {
        VStack {
            Image(systemName: "logo")
                .resizable()
                
                NavigationStack{
                    NavigationLink("Play", destination: Level1View())
                
            }
        }
    }
}
    
