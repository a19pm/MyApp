//
//  ActressScreen.swift
//  Alina
//
//  Created by Dmitry on 24/01/2023.
//

import SwiftUI

struct ActressScreen: View {
  var body: some View {
    ScrollView {
      VStack(spacing: 24){
        HStack(spacing: 3.14){
          Image("i 72")
          Spacer()
          Circle().frame(width: 5.71)
          Circle().frame(width: 5.71)
          Circle().frame(width: 5.71)
        }
        
        VStack(alignment: .leading, spacing: 18){
          FilmCard2(image: "i 70", name: "Special movie", producer: "R A W", rate: 4.4, genre: "Horror", hours: "2h 37m", isSecondGenre: false, genre2: "1")
          FilmCard2(image: "i 68", name: "On Sale!", producer: "Special Movie Ema", rate: 5.2, genre: "Horror", hours: "1h 37m", isSecondGenre: true, genre2: "Drama")
          FilmCard2(image: "i 69", name: "Spesial Joker", producer: "Put on a happies Face", rate: 4.6, genre: "Horror", hours: "1h 50m", isSecondGenre: true, genre2: "Action")
        }
      }.padding(.horizontal, 29).padding(.top, 26)
      
    }.safeAreaInset(edge: .bottom) {
      HStack(spacing: 0){
       BottomMenu(text: "Biography")
        Spacer()
        BottomMenu(text: "Featured films")
        Spacer()
        BottomMenu(text: "Directory's")
      }
      .padding(.leading, 24)
       .padding(.trailing, 7)
        .padding(.vertical, 7)
        .background(.white, in: RoundedRectangle(cornerRadius: 6))
      //.padding(.top, 10)
        .shadow(color: .color("35405A").opacity(0.13), radius: 24, x: 0, y: 22)
        .frame(height: 48)
        .padding(.horizontal, 30)
        .padding(.bottom, -10)
        
       // .background(.color("F5F6F7"))
        
    }.background{
      ZStack{
        Image("i 73")
        Rectangle()
          .fill(LinearGradient(colors: [.white.opacity(0.5), .white.opacity(1)], startPoint: .top, endPoint: .center))
      }
    }
  }
}
struct ActressScreen_Previews: PreviewProvider {
  static var previews: some View {
    ActressScreen()
  }
}
struct BottomMenu: View {
  @State var isSelected = false
  var text : String
  var body: some View {
    Button {
      isSelected.toggle()
    } label: {
      Text(text)
            .font(.system(size: 12, weight: .regular, design: .default))
            .foregroundColor( isSelected ? .color("FFFFFF") : .color("616161"))
            .padding(.vertical, isSelected ? 10 : 0)
            .padding(.horizontal, isSelected ? 12 : 0)
            .background(isSelected ? .color("3544C4") : .clear)
            .cornerRadius(isSelected ? 6 : 0)
            .shadow(color: isSelected ? .color("3544C4").opacity(0.6) : .clear, radius: 34, x: 10, y: 32)
//            .padding(.leading,  isSelected ? 9 : 24)
//             .padding(.trailing, isSelected 16)
      //
      //Spacer()
    }
     
   // Spacer()
    
  }
}

struct FilmCard2: View {
  var image: String
  var name: String
  var producer: String
  var rate: Double
  var genre: String
  var hours: String
  var isSecondGenre: Bool
  var genre2: String
  @State var isLiked = false
  var body: some View {
    
      HStack(alignment: .center, spacing: 28){
        ZStack(alignment: .topTrailing){
          ZStack(alignment: .bottom){
            Rectangle().foregroundColor(.color("616161"))
              .frame(width: 76, height: 54)
              .shadow(color: .black.opacity(1), radius: 74, x: 0, y: 32)
            Image(image)
              .resizable()
              .frame(width: 118, height: 144)
              .mask(Rectangle().cornerRadius(13).frame(width: 118, height: 144))
          }
          Button {
            isLiked.toggle()
          } label: {
            Image(isLiked ? "i 39" : "i 17")
            // Image("i 39")
              .padding(9)
              .background(.ultraThinMaterial)
              .cornerRadius(16)
              .padding(12)
          }
//          Image("i 39")
//            .padding(9)
//            .background(.ultraThinMaterial)
//            .cornerRadius(16)
//            .padding(12)
        }
        VStack(alignment: .leading,spacing: 5) {
          Text("\(name) :\n\(producer)")
            .font(.system(size: 16, weight: .semibold, design: .default))
            .foregroundColor(.color("1C2238"))
            .lineSpacing(4)
          
          HStack(spacing: 6){
            ForEach(0 ..< 5) { i in
              Image(i >= Int(rate) ? "i 41" : "i 40")
            }
            Text(rate.description)
              .font(.system(size: 12, weight: .semibold, design: .default))
              .foregroundColor(.color("333333"))
              .padding(.leading, 4)
          }
          HStack{
            Text(genre)
              .font(.system(size: 10, weight: .regular, design: .default))
              .foregroundColor(.color("616161"))
              .padding(4)
              .overlay(RoundedRectangle(cornerRadius: 4)
                .stroke(.color("979797"), lineWidth: 0.5 ))
              .padding(.top, 4)
              .padding(.bottom, 6)
            if isSecondGenre{
              Text(genre2)
                .font(.system(size: 10, weight: .regular, design: .default))
                .foregroundColor(.color("616161"))
                .padding(4)
                .overlay(RoundedRectangle(cornerRadius: 4)
                  .stroke(.color("979797"), lineWidth: 0.5 ))
                .padding(.top, 4)
                .padding(.bottom, 6)
            }
          }
          HStack{
            Image("i 42")
            Text(hours)
              .font(.system(size: 12, weight: .semibold, design: .default))
              .foregroundColor(.color("1C2238"))
          }
        
        }
      }.padding(.vertical, 24)
      //.padding(.horizontal, 20)
      .padding(.leading, 5)
      .frame(maxWidth: .infinity)
      .background(.white)
      .cornerRadius(10)
      .shadow(color: .color("35405A").opacity(0.13), radius: 24, x: 0, y: 22)
     
    
  }
}
struct ActressScreen2: View {
  var body: some View {
    ScrollView {
      VStack(spacing: 325){
        HStack(spacing: 3.14){
          Image("i 72")
          Spacer()
          Circle().frame(width: 5.71)
          Circle().frame(width: 5.71)
          Circle().frame(width: 5.71)
        }
     //Spacer()
      //  Spacer()
        VStack(alignment: .leading, spacing: 16){
          HStack(spacing: 7){
            Text("Actors")
             
            Circle().frame(width: 5)
            Text("Film Directors")
          } .font(.system(size: 16, weight: .regular, design: .default))
            .foregroundColor(.color("35405A").opacity(0.48))
          Text("Sindiana Samin")
            .font(.system(size: 30, weight: .heavy, design: .default))
              .foregroundColor(.color("35405A").opacity(1))
          HStack(spacing: 0.5){
            Rectangle().frame(width: 150, height: 1)
              .foregroundColor(.color("DEE2EE").opacity(1))
              .padding(.trailing, 8)
            Text("4.5")
              .font(.system(size: 12, weight: .regular, design: .default))
                .foregroundColor(.color("35405A").opacity(1))
            Image("i 74")
          }.padding(.top, 2)
            .padding(.bottom, 4)
          HStack{
            Text("An actress who was born in Japan and has unique advanta… ")
              .font(.system(size: 16, weight: .regular, design: .default))
                .foregroundColor(.color("35405A").opacity(1)) +
            Text("See all")
              .font(.system(size: 16, weight: .semibold, design: .default))
                .foregroundColor(.color("3544C4").opacity(1))
          }.lineSpacing(10)
          HStack{
            Image("i 75")
              .frame(width: 32, height: 32)
              .background(.color("4367B2"))
              .cornerRadius(3)
              .shadow(color: .color("4367B2").opacity(0.5), radius: 24, x: 0, y: 21)
            Image("i 76")
              .frame(width: 32, height: 32)
              .background(LinearGradient(colors: [.color("C837AB"), .color("FF543E"), .color("FFDD55")], startPoint: .topTrailing, endPoint: .bottomLeading))
              .cornerRadius(3)
              .shadow(color: .color("FF6141").opacity(0.5), radius: 24, x: 0, y: 21)
            Image("i 77")
              .frame(width: 32, height: 32)
              .background(.color("03A9F4"))
              .cornerRadius(3)
              .shadow(color: .color("03A9F4").opacity(0.5), radius: 24, x: 7, y: 21)
          }.padding(.top, 8)
        }.padding(.top, 42).padding(.bottom, 34).padding(.leading, 24).padding(.trailing, 31)
          .frame(maxWidth: .infinity)
          .background(.white)
          .cornerRadius(10)
          .shadow(color: .color("35405A").opacity(0.13), radius: 24, x: 0, y: 22)
        
      }.padding(.horizontal, 30).padding(.top, 26)
      
    }.safeAreaInset(edge: .bottom) {
      HStack(spacing: 0){
       
        BottomMenu(text: "Biography")
         Spacer()
         BottomMenu(text: "Featured films")
         Spacer()
         BottomMenu(text: "Directory's")
                 
               
      }.padding(.leading, 9).padding(.trailing, 16)
        .padding(.vertical, 7)
        .background(.white, in: RoundedRectangle(cornerRadius: 6))
      //.padding(.top, 10)
        .shadow(color: .color("35405A").opacity(0.13), radius: 24, x: 0, y: 22)
        .frame(height: 48)
        .padding(.horizontal, 30)
        .padding(.bottom, -10)
        
       // .background(.color("F5F6F7"))
        
    }.background {
      ZStack(alignment: .bottom){
        Image("i 73")
        Rectangle()
          .fill(LinearGradient(colors: [
            .white.opacity(0),
            .white.opacity(0),
            .white.opacity(1),
            .white.opacity(1)
          ], startPoint: .top, endPoint: .bottom))
      }.ignoresSafeArea()
    }
  }
}
struct ActressScreen2_Previews: PreviewProvider {
  static var previews: some View {
    ActressScreen2()
  }
}
struct ActressScreen3: View {
  var body: some View {
    ScrollView {
      VStack(spacing: 204){
        HStack(spacing: 3.14){
          Image("i 72")
          Spacer()
          Circle().frame(width: 5.71)
          Circle().frame(width: 5.71)
          Circle().frame(width: 5.71)
        }
        
        VStack(alignment: .leading, spacing: 32){
         
              Text("All best featured films")
            .font(.system(size: 18, weight: .regular, design: .default))
            .foregroundColor(.color("333333"))
            .tracking(0.69)
            .padding(.leading, 6)
          VStack(spacing: 24){
            FeaturedFilm(number: "1", name: "Gangs of New York", producer: "Martin Scorsese")
            Rectangle()
              .frame(height: 1)
              .foregroundColor(.color("979797").opacity(0.19))
            FeaturedFilm(number: "2", name: "The Godfather", producer: "Martin Scorsese")
            Rectangle()
              .frame(height: 1)
              .foregroundColor(.color("979797").opacity(0.19))
            FeaturedFilm(number: "3", name: "Deal with satans", producer: "Martin Scorsese")
            Rectangle()
              .frame(height: 1)
              .foregroundColor(.color("979797").opacity(0.19))
            FeaturedFilm(number: "4", name: "The grapes monkey", producer: "Martin Scorsese")
            
          }
              
          }.padding(.top, 24).padding(.bottom, 38).padding(.leading, 18).padding(.trailing, 20)
            .frame(maxWidth: .infinity)
            .background(.white)
            .cornerRadius(10)
            .shadow(color: .color("35405A").opacity(0.13), radius: 24, x: 0, y: 22)
          
        
      }.padding(.horizontal, 29).padding(.top, 26)
      
    }.safeAreaInset(edge: .bottom) {
      HStack(spacing: 0){
       
        BottomMenu(text: "Biography")
         Spacer()
         BottomMenu(text: "Featured films")
         Spacer()
         BottomMenu(text: "Directory's")
               
      }.padding(.leading, 24).padding(.trailing, 7)
        .padding(.vertical, 7)
        .background(.white, in: RoundedRectangle(cornerRadius: 6))
      //.padding(.top, 10)
        .shadow(color: .color("35405A").opacity(0.13), radius: 24, x: 0, y: 22)
        .frame(height: 48)
        .padding(.horizontal, 30)
        .padding(.bottom, -10)
        
       // .background(.color("F5F6F7"))
        
    }.background{
      ZStack{
        Image("i 73")
        Rectangle()
          .fill(LinearGradient(colors: [.white.opacity(0.5), .white.opacity(1)], startPoint: .top, endPoint: .center))
      }
    }
  }
}
  
struct ActressScreen3_Previews: PreviewProvider {
  static var previews: some View {
    ActressScreen3()
  }
}

struct FeaturedFilm: View {
  var number: String
  var name: String
  var producer: String
  var body: some View {
  
      HStack(spacing: 16){
        Text(number)
          .font(.system(size: 12, weight: .semibold, design: .default))
          .foregroundColor(.color("35405A").opacity(1))
          .frame(width: 32, height: 32)
          .background(.color("DEE2EE").opacity(0.46))
          .cornerRadius(64)
        VStack(alignment: .leading, spacing: 6){
          Text(name)
            .font(.system(size: 16, weight: .semibold, design: .default))
            .foregroundColor(.color("333333").opacity(1))
          Text(producer)
            .font(.system(size: 12, weight: .regular, design: .default))
            .foregroundColor(.color("939393").opacity(1))
        }
        Spacer()
        Image("i 78")
          .frame(width: 41, height: 37)
          .overlay(RoundedRectangle(cornerRadius: 8).stroke(.color("DEE2EE"), lineWidth: 1 ))
      }
     
    
  }
}
//Rectangle()
//  .frame(height: 1)
//  .foregroundColor(.color("979797").opacity(0.19))
