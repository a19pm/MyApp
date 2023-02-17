//
//  Pixels.swift
//  Alina
//
//  Created by Dmitry on 21/12/2022.
//

import SwiftUI

struct PixelsSplashView : View {
  var body: some View {
    HStack(spacing: 11.62){
      Image("Logo")
        .resizable()
        .frame(width: 56.38, height: 62.94)
      
      HStack(alignment: .top){
        Text("Pixels")
                .font(.system(size: 40, weight: .regular, design: .default)).tracking(-1.5)
        Text("TM").font(.system(size: 13, weight: .medium, design: .default)).tracking(-1.4)
          .foregroundColor(.color("073B4C"))
      }
      
    }
  }
}

struct Fonts: View {
  let names = UIFont.familyNames.flatMap {
    UIFont.fontNames(forFamilyName: $0)
  }
  var body: some View {
    List(names, id: \.self) { name in
      HStack {
        
        Text(name).font(.custom(name, size: 17))
      }
    }
  }
}
struct Fonts_Previews: PreviewProvider {
  static var previews: some View {
    Fonts()
  }
}

struct Pixels_Previews: PreviewProvider {
  static var previews: some View {
    PixelsSplashView()
  }
}

struct PixelsNews: View {
  var body: some View {
    ZStack{
      ScrollView{
        VStack(spacing: 0){
          HStack(spacing: 0){
            Image("Logo2")
            Text("Pixels")
              .font(.system(size: 23, weight: .medium, design: .default))
              .foregroundColor(.color("0077B6"))
              .padding(.leading, 9.37).padding(.trailing, 4)
            
            Text("News")
              .font(.system(size: 23, weight: .medium, design: .rounded))
              .foregroundColor(.black)
            Spacer()
            Image("Newslogo")
          }.padding(.bottom,25)
          
          HStack{
            Group {
              Text("Covid-19 News : ")
                .font(.system(size: 16, weight: .medium, design: .rounded))
                .foregroundColor(.color("0077B6")) +
              Text("See the latest coverage about Covid-19")
              .font(.system(size: 16, weight: .medium, design: .rounded))
              .foregroundColor(.color("7F7F7F"))
            }
            Spacer()
            Image("chevron")
            
          }.padding(.leading, 19)
            .padding(.top, 21)
            .padding(.trailing, 11)
            .padding(.bottom, 19).background(RoundedRectangle(cornerRadius: 12).fill(.white))
            .overlay(RoundedRectangle(cornerRadius: 12).stroke(.color("D3D3D3"), lineWidth: 1 ))
           
          
                        
          VStack(alignment: .leading, spacing: 0){
            Text("News for you")
              .font(.system(size: 19, weight: .medium, design: .rounded))
              .foregroundColor(.black)
              .padding(.bottom, 3)
            Text("Top 5 News of the day")
              .font(.system(size: 15, weight: .medium, design: .rounded))
              .foregroundColor(.color("7F7F7F"))
              .padding(.bottom, 17)
            Image("Image")
              .resizable().frame( height: 132)
             
          }.padding(.top, 26)
            .padding(.bottom, 17)
          VStack(spacing: 26){
            NewsCard(text: "Dream home design inspiration for you in the future.", time: "3 Hours", area: "Architecture", newsImage: "")
            NewsCard(text: "(Update) Iphone 13 Rumor New design?", time: "7 Hours", area: "Tech", newsImage: "Image2")
            NewsCard(text: "best time to see the sunset in the afternoon.", time: "9 mins", area: "Tips & Trick", newsImage: "Image3")
          }
        }.padding(.top, 20).padding(.horizontal, 27)
      }
    }.background(.white).safeAreaInset(edge: .bottom) {
      TabBarPixels()}
  }
}
struct PixelsNews_Previews: PreviewProvider {
  static var previews: some View {
    PixelsNews()
  }
}


struct NewsCard: View {
  var text: String
  var time: String
  var area: String
  var newsImage: String
  var body: some View {
    HStack{
      VStack(alignment: .leading, spacing: 10){
        Text(text)
          .font(.system(size: 16, weight: .medium, design: .rounded))
          .foregroundColor(.black).tracking(0.5).lineSpacing(5)
          .padding(.bottom, 10)
        HStack(spacing:9){
          Text(time).tracking(0.5)
            .font(.system(size: 14, weight: .medium, design: .rounded))
            .foregroundColor(.color("898989"))
        Circle().foregroundColor(.color("898989")).frame(width: 4, height: 4)
          Text(area).tracking(0.5)
            .font(.system(size: 14, weight: .medium, design: .rounded))
            .foregroundColor(.color("898989"))
        }
      }
      Spacer()
      Image(newsImage).padding(.leading, 40)
    }
  }
}

struct Headlines: View {
  var body: some View {
    ZStack{
      ScrollView{
        VStack(alignment: .trailing, spacing: 0){
          HStack(spacing: 3){
            Text("Headlines")
              .font(.system(size: 23, weight: .medium, design: .rounded))
              .foregroundColor(.black)
            Spacer()
            Circle().frame(width: 6, height: 6)
            Circle().frame(width: 6, height: 6)
            Circle().frame(width: 6, height: 6)
          }
          
            Text("Search")
              .font(.system(size: 17, weight: .medium, design: .rounded))
              .foregroundColor(.color("CDCDCD"))
             // .padding(.trailing, 141).padding(.leading, 149)
              .padding(.top, 17)
              .padding(.bottom, 18)
              .frame(maxWidth: .infinity)
              .background(.color("E8E8E8").opacity(0.25), in: Rectangle())
              .cornerRadius(12)
              .padding(.top, 24.83)
              .padding(.bottom, 28)
          
          HStack{
            Topics(text: "LATEST")
            Spacer()
            Topics(text: "INDONESIA")
            Spacer()
            Topics(text: "TECHNOLOGY")
            Spacer()
            Topics(text: "WORLD")
            
          }
          
          VStack(spacing: 26){
            NewsCard(text: "YouTube's new features, let's take a look", time: "45 Mins", area: "Tech", newsImage: "Image 2")
            NewsCard(text: "Be careful on social media, stay alert", time: "1 Hours", area: "Tech", newsImage: "Image 3")
          } .padding(.top, 51)
            .padding(.bottom, 33)
          
          Text("Read more on technology")
                     .font(.system(size: 16, weight: .medium, design: .rounded))
                     .foregroundColor(.color("0077B6"))
                     //.padding(.horizontal, 76)
                     .padding(.top, 14).padding(.bottom, 20)
                     .frame (maxWidth : .infinity)
                     .background(.color("96D3F2").opacity(0.1), in: Rectangle())
                     .cornerRadius(12)
          
          VStack(spacing: 26){
            NewsCard(text: "Morning lunch, to maintain endurance while working", time: "15 Mins", area: "Food", newsImage: "Image 4")
            NewsCard(text: "Healthy food for school children", time: "55 Mins", area: "Food", newsImage: "Image 5")
          }.padding(.top, 29)
            .padding(.bottom, 33)
          
          Text("Read more on technology")
                     .font(.system(size: 16, weight: .medium, design: .rounded))
                     .foregroundColor(.color("0077B6"))
                     //.padding(.horizontal, 76)
                     .padding(.top, 14).padding(.bottom, 20)
                     .frame(maxWidth : .infinity)
                     .background(.color("96D3F2").opacity(0.1), in: Rectangle())
                     .cornerRadius(12)
          
        }.padding(.top, 16.83).padding(.leading, 27).padding(.trailing, 37)
      }
    }.background(.white).safeAreaInset(edge: .bottom) {
      TabBarPixels2()}
  
  }
}
struct Headlines_Previews: PreviewProvider {
  static var previews: some View {
    Headlines()
  }
}


struct Topics: View {
  var text : String
  @State var isSelected = false
  var body: some View {
    HStack {
      Button {
        isSelected.toggle()
      } label: {
        Text(text)
          .font(.system(size: 13, weight: .medium, design: .rounded))
          .foregroundColor(isSelected ? .color("0077B6") : .color("CDCDCD"))
      }
    }
  }
  
}
