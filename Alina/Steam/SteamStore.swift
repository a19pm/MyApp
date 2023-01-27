//
//  SteamStore.swift
//  Alina
//
//  Created by Dmitry on 20/12/2022.
//

import SwiftUI

struct SteamStore: View {
  var body: some View {
    ZStack {
      
      ScrollView{
        ZStack{
          VStack(alignment: .leading, spacing: 0) {
            HStack (alignment: .center, spacing: 6){
              Image("SteamLogo")
                .resizable().frame(width: 26, height: 26)
              Text("Steam Store")
                .foregroundColor(.white)
                .font(.system(size: 28, weight: .regular, design: .default))
              Spacer()
              Image("Search2")
                .resizable()
                .frame(width: 16, height: 16)
                .padding(.trailing,8)
            }.padding(.bottom,18)
            ScrollView(.horizontal) {
              HStack {
                ZStack(alignment: .bottom){
                  Image("Dead")
                    .resizable()
                    .frame(width: 327, height: 230)
                    .overlay(.black.opacity(0.2))
                    .overlay(alignment: .bottom) {
                      LinearGradient(colors: [
                        .clear, .black.opacity(0.62)
                      ], startPoint: .top, endPoint: .bottom)
                      .frame(height: 159)
                    }.cornerRadius(12)
                  VStack(alignment: .leading, spacing: 0){
                    Text("Dead by Daylight")
                      .foregroundColor(.white)
                      .font(.system(size: 20, weight: .regular, design: .default))
                      .padding(.bottom, 3)
                    HStack(spacing: 3){
                      Text("Recommended by your friend,")
                        .foregroundColor(.white)
                        .font(.system(size: 13, weight: .regular, design: .default))
                        .opacity(0.7)
                      Text("Jägermeister")
                        .foregroundColor(.white)
                        .font(.system(size: 13, weight: .bold, design: .default))
                        .opacity(0.7)
                    }.padding(.bottom, 6)
                    HStack(spacing: 0) {
                      Text("-70%")
                        .foregroundColor(.white)
                        .font(.system(size: 12, weight: .bold, design: .default))
                        .padding(2)
                        .background(.color("00D44B").opacity(0.5), in: Rectangle())
                        .cornerRadius(3, corners: .topLeft)
                        .cornerRadius(3, corners: .bottomLeft)
                      
                      
                      HStack(spacing: 0) {
                        HStack(spacing: 2) {
                          
                          ZStack {
                            Text("$18") .foregroundColor(.white)
                              .opacity(0.7)
                              .font(.system(size: 12, weight: .medium, design: .default))
                            Rectangle().frame(width: 23, height: 1).foregroundColor(.color("D8D8D8"))
                          }
                          Text("$5")
                            .foregroundColor(.white)
                            .font(.system(size: 12, weight: .bold, design: .default))
                          
                        } .padding(.horizontal, 6.5).padding(.vertical, 2)
                          .background(.color("000000").opacity(0.64), in: Rectangle()).cornerRadius(3, corners: .topRight).cornerRadius(3, corners: .bottomRight)
                        
                        Spacer()
                        Image("windows")
                      }
                      
                    }
                    
                  }.padding(.horizontal, 15).padding(.bottom, 20).frame(width: 327)
                }
                
                Image("next")
                  .resizable()
                  .frame(width: 327, height: 230)
                  .overlay(.black.opacity(0.2))
                  .overlay(alignment: .bottom) {
                    LinearGradient(colors: [
                      .clear, .black.opacity(0.62)
                    ], startPoint: .top, endPoint: .bottom)
                    .frame(height: 159)
                  }.cornerRadius(12)
                
                //                                Rectangle().foregroundColor(.color("D8D8D8")).opacity(0.2)
                //                                    .frame(height: 167).cornerRadius(12)
                //
                //                                Rectangle().fill(LinearGradient(colors: [.color("D8D8D8"), .color("49494B")], startPoint: .top, endPoint: .bottom)).cornerRadius(0).frame(height: 159)
                //                                    .padding(.top, 73).opacity(0.2)
                
                
                
              }
            }.padding(.trailing, -20).padding(.bottom,32)
            
            ScrollView(.horizontal) {
              HStack(spacing: 8) {
                ScrollIcons(name: "Top Sellers", isSelected: true)
                ScrollIcons(name: "Free to play", isSelected: false)
                ScrollIcons(name: "Early Access", isSelected: false)
                ScrollIcons(name: "World", isSelected: false)
              }
            }.padding(.trailing, -20).padding(.bottom,16)
            VStack{
              GameCard(image: "gta", name: "Grand Theft Auto V", wind: true, mac: false, sale: true, price: "$10")
              GameCard(image: "battlefield", name: "Battlefield 4™", wind: true, mac: false, sale: false, price: "$35")
              GameCard(image: "factorio", name: "Factorio", wind: false, mac: true, sale: false, price: "$7")
              GameCard(image: "horizon", name: "Horizon Zero Dawn", wind: true, mac: false, sale: false, price: "$38")
            }
            
          }.padding(.top, 21).padding(.horizontal,20)
          
        }
        
      }
    }.background(.color("1C202C")).safeAreaInset(edge: .bottom) {
      TabBar4()}
  }
}

struct SteamStore_Previews: PreviewProvider {
  static var previews: some View {
    SteamStore()
  }
}
struct GameCard: View {
  var image: String
  var name: String
  var wind: Bool
  var mac: Bool
  var sale: Bool
  var price: String
  var body: some View {
    HStack(alignment:.center ,spacing: 14){
      Image(image)
        .resizable()
        .frame(width: 72, height: 50)
      VStack(alignment: .leading, spacing: 8) {
        Text(name)
          .foregroundColor(.white)
          .font(.system(size: 16, weight: .semibold, design: .default))
        
        if wind {
          HStack(spacing: 6.5) {
            Image("windows").resizable().frame(width: 12.5, height: 12.5)
            Text("Windows")
              .foregroundColor(.color("7B8D9D"))
              .font(.system(size: 14, weight: .regular, design: .default))
          }
          
        }
        if mac {
          HStack(spacing: 6.5) {
            Image("windows").resizable().frame(width: 12.5, height: 12.5)
            Image("mac").resizable().frame(width: 11.82, height: 14.18)
            Text("Windows, Mac")
              .foregroundColor(.color("7B8D9D"))
              .font(.system(size: 14, weight: .regular, design: .default))
          }
          
        }
      }
      Spacer()
      if sale {
        VStack(alignment: .trailing, spacing: 3){
          
          HStack(alignment: .lastTextBaseline, spacing: 4.5) {
            ZStack {
              Text("$20") .foregroundColor(.white)
                .opacity(0.7)
                .font(.system(size: 12, weight: .medium, design: .default))
              Rectangle().frame(width: 23, height: 1).foregroundColor(.color("D8D8D8"))
            }
            Text(price) .foregroundColor(.white)
              .font(.system(size: 18, weight: .bold, design: .default))
            
          }
          Text("-50%")
            .foregroundColor(.white)
            .font(.system(size: 12, weight: .bold, design: .default)).padding(.vertical,2).padding(.horizontal,4).background(.color("00D44B").opacity(0.5), in: RoundedRectangle(cornerRadius: 4))
          
        }
        
      } else {
        Text(price).foregroundColor(.white)
          .font(.system(size: 18, weight: .bold, design: .default))
      }
    }.padding(.vertical, 10)
  }
}
