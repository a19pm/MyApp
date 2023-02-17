//
//  TabBarDailoz.swift
//  Alina
//
//  Created by Dmitry on 27/12/2022.
//


import SwiftUI

enum Tabs: Int {
  case home = 0
  case task = 1
  case graphic = 2
  case profile = 3
}

struct TabDailoz: View {
 @Binding var isSelectedHome: Bool
  @Binding var isSelectedTask: Bool
  @Binding var isSelectedGraphic: Bool
  @Binding var isSelectedProfile: Bool
  
  var body: some View {
    ZStack {
      HStack(){
        Button{
          isSelectedHome.toggle()
        } label: {
          if isSelectedHome{
            VStack(){
              Image("1").frame(height: 20).scaledToFill()
              Spacer()
              Rectangle().frame(width: 4, height: 4).foregroundColor(.color("5B67CA"))
              
              
            }.frame(height: 31).padding(.top,13)
            
          } else {
            Image("Image 13")
          }
        }
        
        Spacer()
        Button{
          isSelectedTask.toggle()
        } label: {
          if isSelectedTask{
            VStack(){
              Image("Image 14").frame(height: 20).scaledToFill()
              Spacer()
              Rectangle().frame(width: 4, height: 4).foregroundColor(.color("5B67CA"))
              
              
            }.frame(height: 31).padding(.top,13)
          } else{
            Image("2")
          }
        }
        
        Spacer()
        ZStack {
          Color.white.frame(width: 14, height: 2)
          Color.white.frame(width: 2, height: 14)
        }.frame(width: 50, height: 50)
          .background(.color("5B67CA"), in: Circle())
        Spacer()
        Button{
          isSelectedGraphic.toggle()
        } label: {
          if isSelectedGraphic {
            VStack(){
              Image("Activity").frame(height: 20).scaledToFill()
              Spacer()
              Rectangle().frame(width: 4, height: 4).foregroundColor(.color("5B67CA"))
              
              
            }.frame(height: 31).padding(.top,13)
          } else{
            Image("3")
          }
        }
        Spacer()
        Button{
          isSelectedProfile.toggle()
        } label: {
          if isSelectedProfile{
            VStack(){
              Image("Image 15").frame(height: 20).scaledToFill()
              Spacer()
              Rectangle().frame(width: 4, height: 4).foregroundColor(.color("5B67CA"))
              
              
            }.frame(height: 31).padding(.top,13)
          } else{
            Image("4")
          }
        }
        }.padding(.vertical, 12).padding(.horizontal,20)
            
  }.frame(width: 316).background(.color("FFFFFF"), in: Rectangle()).cornerRadius(14).shadow(color: .color("F1F7FF"), radius: 13, x: -3, y: 7)
  }
}

//struct TabBArDailoz_Previews: PreviewProvider {
//  static var previews: some View {
//    TabDailoz(isSelectedHome: true, isSelectedTask: true, isSelectedGraphic: true, isSelectedProfile: true)
//  }
//}
//struct TabItemData1 {
//  let image: String
//  let selectedImage: String
//  let plus : Bool
//  //let title: String
//}
//struct TabItemView1: View {
//  let data: TabItemData
//  let isSelected: Bool
//  let plus : Bool
//
//  var body: some View {
//    VStack {
//      if plus{
//        ZStack {
//          Color.white.frame(width: 14, height: 2)
//          Color.white.frame(width: 2, height: 14)
//        }.frame(width: 50, height: 50)
//          .background(.color("5B67CA"), in: Circle())
//      }
//      Image(isSelected ? data.selectedImage : data.image)
//        .frame(height: 20).scaledToFill()
//      if isSelected {
//        Spacer()
//        Rectangle().frame(width: 4, height: 4).foregroundColor(.color("5B67CA"))
//    }
//      }.padding(.vertical, 12)
//    }
//  }
//
//struct TabBottomView1: View {
//
//  let tabbarItems: [TabItemData]
//
//  var width: CGFloat = UIScreen.main.bounds.width - 30
//  @Binding var selectedIndex: Int
//
//  var body: some View {
//    HStack(alignment: .center) {
//      ForEach(tabbarItems.indices) { index in
//        if index > 0 {
//          Spacer()
//        }
//        let item = tabbarItems[index]
//        Button {
//          self.selectedIndex = index
//        } label: {
//          let isSelected = selectedIndex == index
//          TabItemView(data: item, isSelected: isSelected, plus: index == 3)
//        }
//      }
//    }.padding(.horizontal, 25)
//    .frame(width: width, height: 63)
//    .background(Color.color("F5F6F7"))
//      .cornerRadius(31.5)
//    //.shadow(radius: 5, x: 0, y: 4)
//  }
//}
//struct CustomTabView1<Content: View>: View {
//
//  let tabs: [TabItemData]
//  @Binding var selectedIndex: Int
//  @ViewBuilder let content: (Int) -> Content
//
//  var body: some View {
//    ZStack {
//      content(selectedIndex)
//      VStack {
//        Spacer()
//        TabBottomView(tabbarItems: tabs, selectedIndex: $selectedIndex)
//      }
//      //.padding(.bottom, 8)
//    }
//  }
//}
//enum TabType1: Int, CaseIterable {
//  case movies = 0
//  case myfavourite
//  case notifications
//  case profile
//
//  var tabItem: TabItemData {
//    switch self {
//    case .movies:
//      return TabItemData(image: "i 8", selectedImage: "i 1")
//    case .myfavourite:
//      return TabItemData(image: "i 2", selectedImage: "i 5")
//    case .plus:
//      return TabItemData(image: "i 3", selectedImage: "i 6")
//    case .notifications:
//      return TabItemData(image: "i 3", selectedImage: "i 6")
//    case .profile:
//      return TabItemData(image: "i 4", selectedImage: "i 7")
//
//    }
//  }
//}
//struct MainTabView1: View {
//
//  @State var selectedIndex: Int = 0
//
//  var body: some View {
//    CustomTabView(tabs: TabType.allCases.map({ $0.tabItem }), selectedIndex: $selectedIndex) { index in
//      let type = TabType(rawValue: index) ?? .movies
//      getTabView(type: type)
//    }
//  }
//
//  @ViewBuilder
//  func getTabView(type: TabType) -> some View {
//    switch type {
//    case .movies:
//      PopularMovieScreen()
//    case .myfavourite:
//      FavouriteScreen()
//    case .notifications:
//      NotificationsScreen()
//    case .profile:
//      ProfileScreen()
//    }
//  }
//}
//
//struct MainTab1_Previews: PreviewProvider {
//  static var previews: some View {
//    MainTabView1()
//  }
//}
