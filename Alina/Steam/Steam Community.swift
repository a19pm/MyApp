//
//  Steam Community.swift
//  Alina
//
//  Created by Dmitry on 20/12/2022.
//

import SwiftUI

struct SteamCommunityView: View {
    var body: some View {
        ZStack {
            ScrollView {
                ZStack {
                    VStack(alignment: .leading, spacing: 0) {
                        HStack(alignment: .center) {
                            Image("SteamLogo")
                                .resizable().frame(width: 26, height: 26)
                            Text("Steam Community")
                                .foregroundColor(.color("D8D8D8"))
                                .font(.system(size: 28, weight: .regular, design: .default))
                            Spacer()
                        }.padding(.bottom, 6)
                        Text("Community and official content for all games and software on Steam")
                            .foregroundColor(.color("7B8D9D")).font(.system(size: 14, weight: .regular, design: .rounded))
                            .padding(.bottom, 21)
                        
                        ScrollView(.horizontal){
                            HStack(spacing: 8){
                                Image("Search").padding(12).background(.color("303649"), in: RoundedRectangle(cornerRadius: 8))
                                ScrollIcons(name: "All", isSelected: true)
                                ScrollIcons(name: "Screenshots", isSelected: false)
                                ScrollIcons(name: "Artwork", isSelected: false)
                                ScrollIcons(name: "World", isSelected: false)
                            }
                        }.padding(.trailing, -20)
                            .padding(.bottom, 16)
                        Rectangle().frame(height: 8).padding(.horizontal, -20).foregroundColor(.color("171A24"))
                            .padding(.bottom, 16)
                        VStack {
                            HStack(spacing: 0) {
                                Image("BitMap")
                                    .resizable()
                                    .frame(width: 34, height: 34)
                                    .padding(.trailing, 9)
                                VStack(alignment: .leading, spacing: 0){
                                    HStack(spacing: 0) {
                                        Text("Eurogamer").foregroundColor(.white).font(.system(size: 16, weight: .semibold, design: .default))
                                            .padding(.trailing, 8)
                                        Text("NEWS")
                                            .foregroundColor(.white).font(.system(size: 8, weight: .bold, design: .default))
                                            .padding(.vertical, 2)
                                            .padding(.horizontal, 4)
                                            .background(.color("B63DB6"), in: RoundedRectangle(cornerRadius: 3))
                                    }
                                    HStack{
                                        Text("yesterday • 2:20 pm")
                                            .foregroundColor(.color("7B8D9D")).font(.system(size: 12, weight: .regular, design: .default))
                                        
                                    }
                                    
                                }//.padding(.leading, 9)
                                Spacer()
                                Image("points")
                                    .padding(.trailing, 8)
                            }//.padding(.bottom, 10)
                            Image("Bitmap2")
                                .resizable()
                                .frame(height: 186)
                            
                        }.padding(.bottom, 15)
                        VStack(alignment: .leading) {
                            Text("Florida tourist attraction sues Fortnite, seeks removal of in-game castle")
                                .lineSpacing(3)
                                .foregroundColor(.white)
                                .font(.system(size: 16, weight: .semibold, design: .rounded))
                                .padding(.bottom, 5)
                            Text("Coral Castle Museum, a tourist attraction near Miami, is suing Fortnite maker Epic Games for trademark infringement and unfair competition.")
                                .lineSpacing(4)
                                .foregroundColor(.color("7B8D9D"))
                                .font(.system(size: 14, weight: .regular, design: .rounded))
                        }.padding(.bottom, 15).padding(.horizontal, 4)
                        Rectangle().frame(height: 1).foregroundColor(.color("303649"))
                            .padding(.bottom, 15)
                        HStack(spacing: 0){
                            Image("thumbup")
                                .padding(.trailing, 8)
                            Text("324")
                                .foregroundColor(.color("00D44B"))
                                .font(.system(size: 14, weight: .medium, design: .rounded))
                                .padding(.trailing, 34)
                            Image("message-square")
                                .padding(.trailing, 8)
                            Text("12")
                                .foregroundColor(.color("4B5664"))
                                .font(.system(size: 14, weight: .medium, design: .rounded))
                            Spacer()
                            Image("Group 1")
                        }.padding(.bottom, 16)
                        
                        Rectangle().frame(height: 8).padding(.horizontal, -20).foregroundColor(.color("171A24")).padding(.bottom, 16)
                        VStack{
                            HStack(spacing: 0){
                                Image("BitMap")
                                    .resizable()
                                    .frame(width: 34, height: 34)
                                    .padding(.trailing, 9)
                                VStack(alignment: .leading, spacing: 0){
                                    HStack(spacing: 0){
                                        Text("Eurogamer").foregroundColor(.white).font(.system(size: 16, weight: .semibold, design: .default))
                                            .padding(.trailing, 8)
                                        Text("NEWS")
                                            .foregroundColor(.white).font(.system(size: 8, weight: .bold, design: .default))
                                            .padding(.vertical, 2)
                                            .padding(.horizontal, 4)
                                            .background(.color("B63DB6"), in: RoundedRectangle(cornerRadius: 3))
                                    }
                                    HStack{
                                        Text("yesterday • 2:20 pm")
                                            .foregroundColor(.color("7B8D9D")).font(.system(size: 12, weight: .regular, design: .default))
                                        
                                    }
                                    
                                }//.padding(.leading, 9)
                            }
                        }
                    }
                    
                }.padding(.top, 21).padding(.horizontal,20)
            }
        }.background(.color("1C202C")).safeAreaInset(edge: .bottom) {
            TabBar2()
        }
    }
}

struct SteamCommunityView_Previews: PreviewProvider {
    static var previews: some View {
        SteamCommunityView()
    }
}

struct ScrollIcons: View {
    var name: String
    var isSelected: Bool
    var body: some View {
        Text(name)
            .foregroundColor(.white)
            .font(.system(size: 14, weight: .semibold, design: .default))
            .padding(.horizontal, 14)
            .padding(.vertical, 8)
            .frame(height: 38)
        //.background(.color("303649"), in: RoundedRectangle(cornerRadius: 8))
            .background(isSelected ? .color("31BCFC") : .color("303649"), in: RoundedRectangle(cornerRadius: 8))
    }
}
