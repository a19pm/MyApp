//
//  Home Screen.swift
//  Alina
//
//  Created by Dmitry on 18/01/2023.
//

import SwiftUI

struct HomeScreen: View {
  @State var menuSelected = false
  @State var isSelected = false
  var body: some View {
    ZStack{
      ZStack(alignment: .top){
        
        Rectangle()
          .frame(height: 298)
          .foregroundColor(.color("F5F6F7"))
          .ignoresSafeArea()
          
        ScrollView {
          VStack(alignment: .leading, spacing: 0){
            HStack(spacing : 4){
              Image("i 14")
              Text("MOVIES")
                .font(.system(size: 14, weight: .heavy, design: .default))
                .foregroundColor(.color("1C2238")).opacity(0.28)
            }
            VStack(alignment: .leading, spacing: 1.5){
              HStack(alignment: .top){
                HStack(alignment: .bottom, spacing: 8){
                  Text("What would you like to see today?")
                  Button {
                    withAnimation(.spring()) {
                      menuSelected.toggle()
                    }
                  } label: {
                    Text(" Popular").foregroundColor(.color("3544C4"))
                  }
                  Image("i 18").padding(.bottom, 7)
                }.frame(width: 258, height: 77)
                  .kerning(1.5)
                
                Spacer()
                Image("i 15").padding(.top, 17)
              }.font(.system(size: 23, weight: .ultraLight, design: .default))
              Rectangle().frame(width: 102, height: 1).foregroundColor(.color("3A40CC")).padding(.leading, 155)
            }
            ScrollView(.horizontal) {
              HStack(spacing: 25) {
                PopularMovieCard(image: "Poster", rate: "7.2", width: 141, heignt: 79, padding: 21, color: .color("E51C4C"), colorShadow: .color("7A1547"), radius: 37, x: 0, y: 32, isSelected: $isSelected)
                PopularMovieCard(image: "Poster", rate: "7.2", width: 141, heignt: 79, padding: 21, color: .color("E51C4C"), colorShadow: .color("7A1547"), radius: 37, x: 0, y: 32, isSelected: $isSelected)
                
              }.padding([.bottom, .horizontal], 122)
            }.padding([.bottom, .horizontal], -122)
              .padding(.top, 28)
              .padding(.bottom, 34)
              .padding(.trailing, -30)
            HStack{
              Text("Popular Actor's")
                .font(.system(size: 19, weight: .semibold, design: .default))
                .foregroundColor(.color("1C2238"))
                .kerning(0.69)
              Spacer()
              Text("See all")
                .font(.system(size: 14, weight: .semibold, design: .default))
                .foregroundColor(.color("3544C4"))
            }
            ScrollView(.horizontal){
              HStack(spacing: 22){
                ActorsCard(image: "Photo Profile", name: "Robert De Niro")
                ActorsCard(image: "Photo Profile 1", name: "Jack Nicholson")
                ActorsCard(image: "Photo profile 2", name: "Marlon Brando")
                ActorsCard(image: "Photo Profile 3", name: "Leonardo DiCaprio")
              }
            }.padding(.top, 29).padding(.trailing, -30)
            
            
          }.padding(.horizontal, 30)
            .padding(.top, 26)
            //
        }.background(.white)
        .blur(radius: menuSelected ? 1 : 0)
          .overlay(.color("000000").opacity(menuSelected ? 0.7 : 0.0))
        if self.menuSelected {
            //Spacer()
            GeometryReader { _ in
              Menu()
            }.frame(maxWidth: .infinity)
            //.frame(alignment: .trailing)
              .padding(.leading, 182)
              .padding(.top, 123)
            .background {
              Color.black.opacity(0)
                .edgesIgnoringSafeArea(.all)
                .onTapGesture {
                  withAnimation {
                    self.menuSelected.toggle()
                  }
                }
            }
        }
        if self.isSelected {
            //Spacer()
            GeometryReader { _ in
              MovieDetailScreem()
            }//.frame(maxWidth: .infinity)
            //.frame(alignment: .trailing)
//              .padding(.leading, 182)
//              .padding(.top, 123)
            .background {
              Color.black.opacity(0)
                .edgesIgnoringSafeArea(.all)
                .onTapGesture {
                  withAnimation {
                    self.isSelected.toggle()
                  }
                }
            }
        }
      }
 }
  }
  struct Menu: View {
    var body: some View {
      VStack(alignment: .leading, spacing: 12){
        HStack{
          Text("Popular")
            .font(.system(size: 12, weight: .regular, design: .default))
            .foregroundColor(.color("1C2238"))
          Spacer()
          Image("i 58")
            .padding(4)
            .background(.color("3544C4"))
            .cornerRadius(24)
        }.padding(8)
          .padding(.leading, 5)
          .background(.color("F5F6F7"))
          .cornerRadius(15)
        Text("Favourite")
          .font(.system(size: 12, weight: .regular, design: .default))
          .foregroundColor(.color("1C2238"))
          .padding(.leading, 13)
        Rectangle().frame(height: 1).foregroundColor(.color("D8D8D8"))
          .padding(.horizontal, 5)
        Text("Superstar")
          .font(.system(size: 12, weight: .regular, design: .default))
          .foregroundColor(.color("1C2238"))
          .padding(.leading, 13)
      }.padding(5).padding(.bottom, 9).background(.white).frame(width: 110).cornerRadius(6)
    }
  }
}
struct HomeScreen_Previews: PreviewProvider {
  static var previews: some View {
    HomeScreen()
  }
}

struct PopularMovieCard: View {
  var image: String
  var rate: String
  var width: Double
  var heignt: Double
  var padding: Double
  var color: Color
  var colorShadow: Color
  var radius: Double
  var x: Double
  var y: Double
  @State var isLiked = false
  @Binding var isSelected: Bool
  var body: some View {
    Button {
      isSelected.toggle()
    } label: {
      ZStack(alignment: .top){
        ZStack(alignment: .bottom){
          Rectangle()
            .frame(width: 141, height: 79)
            .foregroundColor(color)
            .shadow(color: color.opacity(0.64), radius: radius, x: x, y: y)
            .padding(.bottom, padding)
          Image("Poster")
            .frame(width: 206, height: 260)
            .clipShape(RoundedRectangle(cornerRadius: 25))
        }
        HStack{
          HStack{
            
            Image("i 16")
            Text(rate)
              .font(.system(size: 14, weight: .semibold, design: .default))
              .foregroundColor(.white)
          }.padding(.vertical, 8)
            .padding(.horizontal, 13)
            .background (.ultraThinMaterial)
          
            .cornerRadius(16)
          
          Spacer()
          Button {
            isLiked.toggle()
          } label: {
            Image(isLiked ? "i 39" : "i 17")
            //.resizable()
            //.frame(width: 11, height: 10)
              .padding(9)
              .padding(.horizontal, 2)
            //.background(.white.opacity(0.19))
              .background (.ultraThinMaterial)
              .cornerRadius(16)
          }
          
        }.padding(20)
      }
    }
  }
}

struct ActorsCard: View {
  var image: String
  var name: String
  var body: some View {
    VStack(alignment: .center, spacing: 13){
      Image(image)
        //.resizable()
        //.frame(width: 77, height: 77)
      Text(name)
        .frame(width: 77, height: 36)
        .font(.system(size: 12, weight: .regular, design: .default))
        .foregroundColor(.color("1C2238"))
        .lineSpacing(6)
        .multilineTextAlignment(.center)
    }
  }
}
