//
//  HighScoreView.swift
//  AdaptiveAssault
//
//  Created by Billy Linker on 4/23/24.
//

import Foundation
import SwiftUI

struct HighScoreView: View {
    var body: some View {
  
            VStack {
                Text("Story")
                    .font(.title)
                    .padding()
                List {
                    HStack {
                        Text("Rank")
                        Spacer()
                        Text("Name")
                        Spacer()
                        Text("Score")
                    }
                }
                
                Text("Infinite")
                    .font(.title)
                    .padding()
                List {
                    HStack {
                        Text("Rank")
                        Spacer()
                        Text("Name")
                        Spacer()
                        Text("Score")
                    }
                }
                .padding()
            }
        }
    }

