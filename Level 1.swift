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
            VStack {
                ForEach(1...9, id: \.self) { number in
                    HStack {
                        ForEach(1...3, id: \.self) { _ in
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
                            } else {
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width: 60, height: 60)
                                    .overlay(
                                        Text("\(number)")
                                            .foregroundColor(.white)
                                    )
                            }
                        }
                    }
                    .padding()
                }
            }
        }
    }
}
