//
//  Popular Movie Screen.swift
//  Alina
//
//  Created by Dmitry on 20/01/2023.
//

import SwiftUI

struct PopularMovieScreen: View {
  var body: some View {
    ZStack(alignment: .top) {
      PopularMovieBackground()
      VStack(alignment: .center, spacing: 0) {
        Text("Nominations and recommended films")
          .font(.system(size: 23, weight: .bold, design: .default))
          .foregroundColor(.color("FFFFFF"))
          .multilineTextAlignment(.center)
        Text("favourite film for you")
          .font(.system(size: 14, weight: .regular, design: .default))
          .foregroundColor(.color("FFFFFF"))
          .padding(.top, 12)
          .padding(.bottom, 41)
        ScrollView(.horizontal) {
          HStack(alignment: .top, spacing: 40) {
            Image("i 30")
              .cornerRadius(22)
              .padding(9)
              .background(.color("FFFFFF").opacity(0.31))
              .cornerRadius(22 + 9)
              .rotationEffect(.degrees(-5))
              .shadow(color: .color("19142C").opacity(0.43), radius: 36, x: 0, y: 62)
              .padding(.top, 23.52)
            ZStack(alignment: .topLeading) {
              ZStack(alignment: .topTrailing) {
                Image("i 30")
                  .cornerRadius(22)
                  .padding(9)
                  .background(.color("FFFFFF").opacity(0.31))
                  .cornerRadius(22 + 9)
                  .shadow(color: .color("57010F").opacity(0.31), radius: 36, x: 0, y: 62)
                Image("i 32")
                  .offset(x: 20, y: 25)
              }
              HStack {
                Image("i 31")
                Text("7.2")
                  .font(.system(size: 14, weight: .semibold, design: .default))
                  .foregroundColor(.white)
              }.padding(.vertical, 8)
                .padding(.leading, 14)
                .padding(.trailing, 12)
                .background(.ultraThinMaterial)
                .cornerRadius(16)
                .padding(.leading, 21)
                .padding(.top, 19)
            }
            Image("i 30")
              .cornerRadius(22)
              .padding(9)
              .background(.color("FFFFFF").opacity(0.31))
              .cornerRadius(22 + 9)
              .rotationEffect(.degrees(5))
              .shadow(color: .color("19142C").opacity(0.43), radius: 36, x: 0, y: 62)
              .padding(.top, 23.52)

          }.padding([.bottom, .horizontal], 122)
          // .padding(.top, 10)
        }.scrollIndicators(.hidden).padding([.bottom, .horizontal], -122)
          .padding(.bottom, 20)

        VStack(alignment: .leading, spacing: 8) {
          Text("New Season")

            .font(.system(size: 10, weight: .regular, design: .default))
            .foregroundColor(.color("616161"))
            .padding(7)
            .padding(.top, 2)
            .padding(.leading, 4)
            .overlay(RoundedRectangle(cornerRadius: 4).stroke(.color("979797"), lineWidth: 0.5))

          Text("The handmaid's")
            .font(.system(size: 30, weight: .heavy, design: .default))
            .foregroundColor(.color("272F4B"))
          HStack {
            Spacer()
            Text("2019")
            Circle().frame(width: 5).foregroundColor(.color("979797"))
            Text("Drama+")
            Circle().frame(width: 5).foregroundColor(.color("979797"))
            Text("Sci-Fi, 18+")
            Spacer()
          }.font(.system(size: 16, weight: .regular, design: .default))
            .foregroundColor(.color("272F4B").opacity(0.51))
            .padding(.top, 8)
            .padding(.bottom, 20.5)
          HStack {
            Spacer()
            Rectangle()
              .frame(width: 150, height: 2)
              .foregroundColor(.color("D8D8D8"))
            Spacer()
          }

        }.padding(.leading, 74)
          .padding(.trailing, 52)

      }.padding(.top, 28)
    }
  }
}

struct PopularMovieScreen_Previews: PreviewProvider {
  static var previews: some View {
    PopularMovieScreen()
  }
}

struct B: View {
  var body: some View {
    VStack(spacing: 10) {
      HStack {
        Text("New Season")

          .font(.system(size: 10, weight: .regular, design: .default))
          .foregroundColor(.color("616161"))
          .padding(7)
          .padding(.top, 2)
          .padding(.leading, 4)
          .overlay(RoundedRectangle(cornerRadius: 4).stroke(.color("979797"), lineWidth: 0.5))
        Spacer()
      }
      Text("The handmaid's")
        .font(.system(size: 30, weight: .heavy, design: .default))
        .foregroundColor(.color("272F4B"))
      HStack {
        Text("2019")
        Circle().frame(width: 5).foregroundColor(.color("979797"))
        Text("Drama+")
        Circle().frame(width: 5).foregroundColor(.color("979797"))
        Text("Sci-Fi, 18+")
      }.font(.system(size: 16, weight: .regular, design: .default))
        .foregroundColor(.color("272F4B").opacity(0.51))
      Rectangle()
        .frame(width: 150, height: 2)
        .foregroundColor(.color("D8D8D8"))

    }.frame(width: 249)
  }
}

struct PopularMovieBackground: View {
  let gradientThreeColors = Gradient(stops: [
    .init(color: .color("CF5454"), location: 0.1),
    .init(color: .color("F0CFA8"), location: 0.3),
    .init(color: .white, location: 0.7),
  ]
  )
  let gradientTwoColors = Gradient(stops: [
    .init(color: .white.opacity(0), location: 0.3),
    .init(color: .white, location: 0.7),
  ]
  )
  var body: some View {
    ZStack(alignment: .top) {
      Rectangle()
        .fill(LinearGradient(gradient: gradientThreeColors, startPoint: .top, endPoint: .bottom))
      Image("i 28").opacity(1)
      Rectangle()
        .fill(LinearGradient(gradient: gradientTwoColors, startPoint: .top, endPoint: .bottom))
    }.ignoresSafeArea()
  }
}

struct FilmsScroll: View {
  var image1: String
  var image2: String
  var image3: String

  var body: some View {
    HStack(alignment: .top, spacing: 40) {
      Image(image1)
        .cornerRadius(22)
        .padding(9)
        .background(.color("FFFFFF").opacity(0.31))
        .cornerRadius(22 + 9)
        .rotationEffect(.degrees(-5))
        .shadow(color: .color("19142C").opacity(0.43), radius: 36, x: 0, y: 62)
        .padding(.top, 23.52)
      ZStack(alignment: .topLeading) {
        ZStack(alignment: .topTrailing) {
          Image(image2)
            .cornerRadius(22)
            .padding(9)
            .background(.color("FFFFFF").opacity(0.31))
            .cornerRadius(22 + 9)
            .shadow(color: .color("57010F").opacity(0.31), radius: 36, x: 0, y: 62)
          Image("i 32")
            .offset(x: 20, y: 25)
        }
        HStack {
          Image("i 31")
          Text("7.2")
            .font(.system(size: 14, weight: .semibold, design: .default))
            .foregroundColor(.white)
        }.padding(.vertical, 8)
          .padding(.leading, 14)
          .padding(.trailing, 12)
          .background(.ultraThinMaterial)
          .cornerRadius(16)
          .padding(.leading, 21)
          .padding(.top, 19)
      }
      Image(image3)
        .cornerRadius(22)
        .padding(9)
        .background(.color("FFFFFF").opacity(0.31))
        .cornerRadius(22 + 9)
        .rotationEffect(.degrees(5))
        .shadow(color: .color("19142C").opacity(0.43), radius: 36, x: 0, y: 62)
        .padding(.top, 23.52)

    }.padding([.bottom, .horizontal], 122)
  }
}

struct F_Previews: PreviewProvider {
  static var previews: some View {
//    FilmsScroll(image1: "i 30", image2: "i 30", image3: "i 30")
    ContentView5()
  }
}

// struct S: View {
//  var body: some View {
struct Item: Identifiable {
  var id: Int
  var title: String
  var color: Color
}

class Store: ObservableObject {
  @Published var items: [Item]

  let colors: [Color] = [.red, .orange, .blue, .teal, .mint, .green, .gray, .indigo, .black]

  // dummy data
  init() {
    items = []
    for i in 0 ... 7 {
      let new = Item(id: i, title: "Item \(i)", color: colors[i])
      items.append(new)
    }
  }
}

struct ContentView5: View {
  @StateObject var store = Store()
  @State private var snappedItem = 0.0
  @State private var draggingItem = 0.0

  var body: some View {
    ZStack {
      ForEach(store.items) { item in

        // article view
        ZStack {
          RoundedRectangle(cornerRadius: 18)
            .fill(item.color)
          Text(item.title)
            .padding()
        }
        .frame(width: 200, height: 200)

        .scaleEffect(1.0 - abs(distance(item.id)) * 0.2)
        .opacity(1.0 - abs(distance(item.id)) * 0.3)
        .offset(x: myXOffset(item.id), y: 0)
        .zIndex(1.0 - abs(distance(item.id)) * 0.1)
        .rotationEffect(.degrees(5 * distance(item.id)))
      }
    }
    .gesture(
      DragGesture()
        .onChanged { value in
          draggingItem = snappedItem + value.translation.width / 100
        }
        .onEnded { value in
          withAnimation {
            draggingItem = snappedItem + value.predictedEndTranslation.width / 100
            draggingItem = round(draggingItem).remainder(dividingBy: Double(store.items.count))
            snappedItem = draggingItem
          }
        }
    )
  }

  func distance(_ item: Int) -> Double {
    return (draggingItem - Double(item)).remainder(dividingBy: Double(store.items.count))
  }

  func myXOffset(_ item: Int) -> Double {
    let angle = Double.pi * 2 / Double(store.items.count) * distance(item)
    return sin(angle) * 300
  }
}

//  }
// }
