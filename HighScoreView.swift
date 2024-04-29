//
//  HighScoreView.swift
//  AdaptiveAssault
//
//  Created by Billy Linker on 4/23/24.
//

import Foundation
import SwiftUI

struct HighScoreView: View {
    var ranksStory = ["1", "2", "3"]
    var namesStory = ["George", "Mike", "John"]
    var scoresStory = ["100", "90", "80"]
    var ranksInf = ["1", "2", "3"]
    var namesInf = ["Robert", "Mathew", "Mark"]
    var scoresInf = ["100", "90", "80"]
    var body: some View {
        VStack {
            Text("Story")
                .font(.title)
                .padding()
            List {
                ForEach(0..<ranksStory.count) { index in
                    HStack {
                        Text(ranksStory[index])
                        Spacer()
                        Text(namesStory[index])
                        Spacer()
                        Text(scoresStory[index])
                    }
                }
            }
            
            Text("Infinite")
                .font(.title)
                .padding()
            List {
                ForEach(0..<ranksInf.count) { index in
                    HStack {
                        Text(ranksInf[index])
                        Spacer()
                        Text(namesInf[index])
                        Spacer()
                        Text(scoresInf[index])
                    }
                }
            }
            .padding()
        }
    }
}
