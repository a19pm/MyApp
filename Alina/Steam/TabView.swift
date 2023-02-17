//
//  TabView.swift
//  Alina
//
//  Created by Dmitry on 15/12/2022.
//

import SwiftUI
struct TabViewView: View {
  @State var selection = 0
  init() {
    UITabBarItem.appearance().badgeColor = .purple // << here !!
  }

  var body: some View {
    TabView(selection: $selection) {
      Group {
        SteamSafetyView()

          .tabItem {
            if selection == 0 {
              Image("11")

            } else {
              Image("10")
            }
          }.tag(0)
        Contacts()
          .tabItem {
            if selection == 1 {
              Image("21")

            } else {
              Image("20")
            }
          }.tag(1)
        GoodMorningJenny()

          .tabItem {
            if selection == 1 {
              Image("badge")
            }
            if selection == 2 {
              Image("31")

            } else {
              Image("30")
            }

          }.tag(2) // .badge("")
        BigSave()
          // .badge("!")
          .tabItem {
            if selection == 3 {
              Image("41")

            } else {
              Image("40")
            }

          }.tag(3)
        WellDone()
          // .badge("!")
          .tabItem {
            Image("50")
          }.tag(4)
      }
      .toolbar(.visible, for: .tabBar)
      .toolbarBackground(
        .color("12141C"),
        for: .tabBar
      )
    }
  }
}

struct TabView_Previews: PreviewProvider {
  static var previews: some View {
    TabViewView()
  }
}

struct TabBar: View {
  var body: some View {
    ZStack {
      HStack(spacing: 58) {
        Image("11").resizable().frame(width: 16, height: 20)
        Image("20")
        Image("30")
        Image("40")
        Image("50")
      }.padding(.bottom, 17).padding(.top, 21).padding(.trailing, 25).padding(.leading, 31)

    }.frame(maxWidth: .infinity).background(.color("12141C"))
  }
}

struct MyPreviewProvider_Previews: PreviewProvider {
  static var previews: some View {
    TabBar()
  }
}

struct TabBar2: View {
  var body: some View {
    ZStack {
      HStack(spacing: 58) {
        Image("10").resizable().frame(width: 16, height: 20)
        Image("21")
        Image("badge")
        Image("40")
        Image("50")
      }.padding(.bottom, 17).padding(.top, 21).padding(.trailing, 25).padding(.leading, 31)

    }.frame(maxWidth: .infinity).background(.color("12141C"))
  }
}

struct TabBar2_Previews: PreviewProvider {
  static var previews: some View {
    TabBar2()
  }
}

struct TabBar3: View {
  var body: some View {
    ZStack {
      HStack(spacing: 58) {
        Image("10").resizable().frame(width: 16, height: 20)
        Image("20")
        Image("31")
        Image("40")
        Image("50")
      }.padding(.bottom, 17).padding(.top, 21).padding(.trailing, 25).padding(.leading, 31)

    }.frame(maxWidth: .infinity).background(.color("12141C"))
  }
}

struct TabBar4: View {
  var body: some View {
    ZStack {
      HStack(spacing: 58) {
        Image("10").resizable().frame(width: 16, height: 20)
        Image("20")
        Image("30")
        Image("41")
        Image("50")
      }.padding(.bottom, 17).padding(.top, 21).padding(.trailing, 25).padding(.leading, 31)

    }.frame(maxWidth: .infinity).background(.color("12141C"))
  }
}

struct TabBarPixels: View {
  var body: some View {
    HStack(alignment: .center, spacing: 70) {
      Image("Icon1").resizable().frame(width: 22, height: 22)
      Image("Icon2").resizable().frame(width: 22, height: 22)
      ZStack(alignment: .topTrailing) {
        Image("Icon3")
        Text("8").foregroundColor(.white).font(.system(size: 9, weight: .medium, design: .default))
          .padding(3)
          .frame(width: 16, height: 16)
          .background(.color("2CD483"), in: Circle())
          .offset(x: 5, y: -7)
      }

      Image("Icon4").resizable().frame(width: 22, height: 22)

    }.padding(.vertical, 33).padding(.horizontal, 61).frame(maxWidth: .infinity)
      .overlay(alignment: .top) {
        Color.color("F0F0F0").frame(height: 0.5)
      }
      // .border(.thinMaterial)

      .background(.color("FFFFFF"))
  }
}

struct TabBarPixels_Previews: PreviewProvider {
  static var previews: some View {
    TabBarPixels()
  }
}

struct TabBarPixels2: View {
  var body: some View {
    HStack(alignment: .center, spacing: 70) {
      Image("Icon5").resizable().frame(width: 22, height: 22)
      Image("Image 1").resizable().frame(width: 22, height: 22)
      ZStack(alignment: .topTrailing) {
        Image("Icon3")
        Text("8").foregroundColor(.white).font(.system(size: 9, weight: .medium, design: .default))
          .padding(3)
          .frame(width: 16, height: 16)
          .background(.color("2CD483"), in: Circle())
          .offset(x: 5, y: -7)
      }

      Image("Icon4").resizable().frame(width: 22, height: 22)

    }.padding(.vertical, 33).padding(.horizontal, 61).frame(maxWidth: .infinity)
      .overlay(alignment: .top) {
        Color.color("F0F0F0").frame(height: 0.5)
      }
      // .border(.thinMaterial)

      .background(.color("FFFFFF"))
  }
}

struct TabBarPixels3: View {
  var body: some View {
    HStack(alignment: .center, spacing: 70) {
      Image("Icon5").resizable().frame(width: 22, height: 22)
      Image("Icon2").resizable().frame(width: 22, height: 22)

      Image("Icon6")

      Image("Icon4").resizable().frame(width: 22, height: 22)

    }.padding(.vertical, 33).padding(.horizontal, 61).frame(maxWidth: .infinity)
      .overlay(alignment: .top) {
        Color.color("F0F0F0").frame(height: 0.5)
      }
      // .border(.thinMaterial)

      .background(.color("FFFFFF"))
  }
}

struct TabBarPixels4: View {
  var body: some View {
    HStack(alignment: .center, spacing: 70) {
      Image("Icon5").resizable().frame(width: 22, height: 22)
      Image("Icon2").resizable().frame(width: 22, height: 22)

      Image("Icon3")

      Image("Icon6").resizable().frame(width: 22, height: 22)

    }.padding(.vertical, 33).padding(.horizontal, 61).frame(maxWidth: .infinity)
      .overlay(alignment: .top) {
        Color.color("F0F0F0").frame(height: 0.5)
      }
      // .border(.thinMaterial)

      .background(.color("FFFFFF"))
  }
}
