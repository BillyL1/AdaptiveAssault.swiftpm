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
                NavigationStack{
                    VStack{
                        Text("Adaptive")
                            .font(.system(size:100))
                            .bold()
                        Text("Assault")
                            .font(.system(size:100))
                            .bold()
                        Image(systemName: "shield")
                            .font(.system(size:100))

                    }
                    Spacer()
                    
                    NavigationLink {
                                        LevelSelectorView()
                                    } label: {
                                        Text("Play")
                                            .font(.system(size:100))
                                            .foregroundStyle(.black)

                                        
                                    }
                    Spacer()
                    
                    HStack{
                        NavigationLink {
                            HighScoreView()
                        } label: {
                            Text("Stats                               ")
                                .font(.system(size:75))
                                .foregroundStyle(.black)

                        }
                        NavigationLink {
                            TowersView()
                        } label: {
                            Text("Index" + "                          ")
                                .font(.system(size:75))
                            
                                .foregroundStyle(.black)
                        }
                    }
                    Spacer()
                    Spacer()
            }
        }
    }
}
