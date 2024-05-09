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
                    ZStack{
                        RoundedRectangle(cornerSize: CGSize(width: 30, height: 30))
                            .stroke(Color.gray, lineWidth: 7)
                            .background(
                                RoundedRectangle(cornerSize: CGSize(width: 30, height: 30))
                                    .fill(Color.brown))
                            .frame(width: 200, height: 120, alignment: .center)
                        Text("Play")
                            .font(.system(size:100))
                    }
                }
                Spacer()
                 Spacer()
                HStack{
                    NavigationLink {
                        HighScoreView()
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                                .stroke(Color.gray, lineWidth: 7)
                                .background(
                                    RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                                        .fill(Color.brown))
                                .frame(width: 200, height: 120, alignment: .center)
                            Text("Stats")
                                .font(.system(size:75))
                                .foregroundStyle(.black)
                        }
                    }
                    NavigationLink {
                        TowersView()
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                                .stroke(Color.gray, lineWidth: 7)
                                .background(
                                    RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                                        .fill(Color.brown))
                                .frame(width: 200, height: 120, alignment: .center)
                            Text("Index")
                                .font(.system(size:75))
                                .foregroundStyle(.black)
                        }
                    }
                    Spacer()
                    NavigationLink{
                        SettingsView()
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                                .stroke(Color.gray, lineWidth: 7)
                                .background(
                                    RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                                        .fill(Color.brown))
                                .frame(width: 300, height: 120, alignment: .center)
                            Text("Settings")
                                .font(.system(size:75))
                                .foregroundStyle(.black)
                        }
                        }
                    }
                }
            }
        }
    }

