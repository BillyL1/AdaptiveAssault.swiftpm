//
//  Level Selector.swift
//  AdaptiveAssault
//
//  Created by Billy Linker on 4/19/24.
//

import Foundation
import SwiftUI

struct LevelSelectorView: View {
    var body: some View {
        Text("Level Selector")
        ScrollView{
            NavigationStack{
            VStack {
                ForEach(1...6, id: \.self) { number in
                    HStack {
                        ForEach(1...3, id: \.self) { count in
                            if number > 1 {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 20)
                                        .frame(width: 60, height: 60)
                                        .overlay(
                                            Image(systemName: "lock")
                                                .resizable()
                                                .frame(width: 45, height: 45)
                                                .foregroundColor(.white)
                                        )
                                    
                                }
                                
                            } 
                            else 
                            {
                                NavigationLink(destination: Level1View()) {
                                    RoundedRectangle(cornerRadius: 20)
                                        .frame(width: 60, height: 60)
                                        .overlay(
                                            Text("\(count)")
                                                .foregroundColor(.white)
                                        )
                                }
                            }
                        }
                    }
                    }
                    .padding()
                }
            }
        }
    }
}




// add a code that says (" if player progress is less than the lvl, it shows that it is locked")
