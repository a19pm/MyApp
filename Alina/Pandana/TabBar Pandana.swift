//
//  TabBar Pandana.swift
//  Alina
//
//  Created by Dmitry on 18/01/2023.
//

import SwiftUI

struct TabItemData {
  let image: String
  let selectedImage: String
  // let title: String
}

struct TabItemView: View {
  let data: TabItemData
  let isSelected: Bool
  let hasNotifications: Bool

  var body: some View {
    ZStack {
      Image(isSelected ? data.selectedImage : data.image)

      // .padding(.top, 20)
      // Spacer()

      // Text(data.title)
      // .foregroundColor(isSelected ? .black : .gray)
      // .font(.system(size: 14))
    }.frame(width: 52, height: 52).background {
      if isSelected {
        Circle().fill(.white).shadow(color: .color("000000").opacity(0.2), radius: 22, x: 0, y: 31)
      }
    }.overlay {
      if hasNotifications {
        Circle().foregroundColor(.color("E42B47"))
          .overlay(Circle().stroke(Color.color("FFFFFF"), lineWidth: 1))
          .frame(width: 9)
          .offset(x: 5, y: -14)
      }
    }
  }
}

struct TabBottomView: View {
  let tabbarItems: [TabItemData]

  var width: CGFloat = UIScreen.main.bounds.width - 30
  @Binding var selectedIndex: Int

  var body: some View {
    HStack(alignment: .center) {
      ForEach(tabbarItems.indices) { index in
        if index > 0 {
          Spacer()
        }
        let item = tabbarItems[index]
        Button {
          self.selectedIndex = index
        } label: {
          let isSelected = selectedIndex == index
          TabItemView(data: item, isSelected: isSelected, hasNotifications: index == 3)
        }
      }
    }.padding(.horizontal, 25)
      .frame(width: width, height: 63)
      .background(Color.color("F5F6F7"))
      .cornerRadius(31.5)
    // .shadow(radius: 5, x: 0, y: 4)
  }
}

struct CustomTabView<Content: View>: View {
  let tabs: [TabItemData]
  @Binding var selectedIndex: Int
  @ViewBuilder let content: (Int) -> Content

  var body: some View {
    ZStack {
      content(selectedIndex)
      VStack {
        Spacer()
        TabBottomView(tabbarItems: tabs, selectedIndex: $selectedIndex)
      }
      // .padding(.bottom, 8)
    }
  }
}

enum TabType: Int, CaseIterable {
  case movies = 0
  case myfavourite
  case notifications
  case profile

  var tabItem: TabItemData {
    switch self {
    case .movies:
      return TabItemData(image: "i 8", selectedImage: "i 1")
    case .myfavourite:
      return TabItemData(image: "i 2", selectedImage: "i 5")
    case .notifications:
      return TabItemData(image: "i 3", selectedImage: "i 6")
    case .profile:
      return TabItemData(image: "i 4", selectedImage: "i 7")
    }
  }
}

struct MainTabView: View {
  @State var selectedIndex: Int = 0

  var body: some View {
    CustomTabView(tabs: TabType.allCases.map { $0.tabItem }, selectedIndex: $selectedIndex) { index in
      let type = TabType(rawValue: index) ?? .movies
      getTabView(type: type)
    }
  }

  @ViewBuilder
  func getTabView(type: TabType) -> some View {
    switch type {
    case .movies:
      PopularMovieScreen()
    case .myfavourite:
      FavouriteScreen()
    case .notifications:
      NotificationsScreen()
    case .profile:
      ProfileScreen()
    }
  }
}

struct MainTab_Previews: PreviewProvider {
  static var previews: some View {
    MainTabView()
  }
}

struct Hello: View {
  var body: some View {
    VStack {}
  }
}
