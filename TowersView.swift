//
//  TowersView.swift
//  AdaptiveAssault
//
//  Created by Billy Linker on 4/23/24.
//

import Foundation
import SwiftUI

struct TowersView:View {
    var body: some View {
        HStack{
            ZStack{
                RoundedRectangle(cornerSize: CGSize(width: 30, height: 30))
                    .stroke(Color.gray, lineWidth: 7)
                    .background(
                        RoundedRectangle(cornerSize: CGSize(width: 30, height: 30))
                            .fill(Color.brown))
                    .frame(width: 310, height: 190, alignment: .center)
                VStack{
                    Text("Musketeer")
                        .font(.system(size:40))
                        .bold()
                    Text("POW!.....POW!")
                        .font(.system(size:30))
                        .bold()
                    Text("Fueled with the hatred of learning, this musketeer will do everything she can to halt these shapes in their path")
                        .bold()
                }
                .frame(width: 300, height: 300)
            }
            ZStack{
                RoundedRectangle(cornerSize: CGSize(width: 30, height: 30))
                    .stroke(Color.gray, lineWidth: 7)
                    .background(
                        RoundedRectangle(cornerSize: CGSize(width: 30, height: 30))
                            .fill(Color.brown))
                    .frame(width: 310, height: 190, alignment: .center)
                VStack{
                    Text("Wizard")
                        .font(.system(size:40))
                        .bold()
                    Text("Magic is knowlage")
                        .font(.system(size:20))
                        .bold()
                    Text("Education is what ruined the wizard's reputation, so why not go after where education begins, the shapes")
                        .bold()
                }
                .frame(width: 300, height: 300)
                    
            }
            ZStack{
                RoundedRectangle(cornerSize: CGSize(width: 30, height: 30))
                    .stroke(Color.gray, lineWidth: 7)
                    .background(
                        RoundedRectangle(cornerSize: CGSize(width: 30, height: 30))
                            .fill(Color.brown))
                    .frame(width: 310, height: 190, alignment: .center)
                VStack{
                    Text("Tesla")
                        .font(.system(size:40))
                        .bold()
                    Text("ZAP")
                        .font(.system(size:30))
                        .bold()
                    Text("Made by the wizard to do his biddings, this tower fights with precision and speed")
                        .bold()
                }
                .frame(width: 300, height: 300)
            }

        }
    }
}
