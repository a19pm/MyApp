//
//  TabBar.swift
//  Alina
//
//  Created by Dmitry on 31/01/2023.
//

import SwiftUI

struct TabItemData1 {
  let image: String
  let selectedImage: String
  //let title: String
}
struct TabItemView1: View {
  let data: TabItemData
  let isSelected: Bool
 // let hasNotifications: Bool
  
  
  var body: some View {
    ZStack(alignment: .bottom) {
      Image(isSelected ? data.selectedImage : data.image)
      if isSelected {
           Rectangle().frame(width: 4, height: 4).foregroundColor(.color("5B67CA"))
             .offset(x: 0, y: 8)
         }
    }.frame(height: 20).scaledToFill()
//     .overlay {
//    }
  }
}

struct TabBottomView1: View {
  
  let tabbarItems: [TabItemData]
  
  var width: CGFloat = UIScreen.main.bounds.width - 30
  @Binding var selectedIndex: Int
  
  var body: some View {
    HStack(alignment: .center) {
      ForEach(tabbarItems.indices) { index in
        if index > 0 {
          Spacer()
        }
        if index > 1 && index <= 2 {
//          Spacer()
          
          ZStack {
            Color.white.frame(width: 14, height: 2)
            Color.white.frame(width: 2, height: 14)
          }.frame(width: 50, height: 50)
            .background(.color("5B67CA"), in: Circle())
          Spacer()
        }
        Button {
          self.selectedIndex = index
        } label: {
          let isSelected = selectedIndex == index
          TabItemView1(data: tabbarItems[index], isSelected: isSelected)
        }
      }
    }.padding(.horizontal, 20)
    .frame(width: width, height: 74)
    .background(Color.color("FFFFFF"))
      .cornerRadius(14)
      .shadow(color: .color("F1F7FF"), radius: 13, x: -3, y: 7)
  }
}
struct CustomTabView1<Content: View>: View {
  
  let tabs: [TabItemData]
  @Binding var selectedIndex: Int
  @ViewBuilder let content: (Int) -> Content
  
  var body: some View {
    ZStack {
      content(selectedIndex)
      VStack {
        Spacer()
        TabBottomView1(tabbarItems: tabs, selectedIndex: $selectedIndex)
      }
      //.padding(.bottom, 8)
    }
  }
}
enum TabTyp: Int, CaseIterable {
  case home = 0
  case task
  case graphic
  case profile
  
  var tabItem: TabItemData {
    switch self {
    case .home:
      return TabItemData(image: "Image 13", selectedImage: "1")
    case .task:
      return TabItemData(image: "2", selectedImage: "Image 14")
    case .graphic:
      return TabItemData(image: "3", selectedImage: "Activity")
    case .profile:
      return TabItemData(image: "4", selectedImage: "Image 15")
      
    }
  }
}
struct MainTabView1: View {
  
  @State var selectedIndex: Int = 0
  
  var body: some View {
    CustomTabView1(tabs: TabTyp.allCases.map({ $0.tabItem }), selectedIndex: $selectedIndex) { index in
      let type = TabTyp(rawValue: index) ?? .home
      getTabView(type: type)
    }
  }
  
  @ViewBuilder
  func getTabView(type: TabTyp) -> some View {
    switch type {
    case .home:
      Home()
    case .task:
      Task()
    case .graphic:
      Graphic()
    case .profile:
      Profile1()
    }
  }
}

struct MainTab_Previews1: PreviewProvider {
  static var previews: some View {
    MainTabView1()
  }
}
