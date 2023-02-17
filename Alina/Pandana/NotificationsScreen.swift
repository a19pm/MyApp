//
//  NotificationsScreen.swift
//  Alina
//
//  Created by Dmitry on 24/01/2023.
//

import SwiftUI
struct NotificationsScreen: View {
  enum Tab {
    case update, message, promo
  }
  struct N: View {
    var notifivation: String
    let tab: Tab
    @Binding var selectedTab: Tab
    var isSelected: Bool { selectedTab == tab }
    var body: some View {
      Button {
        selectedTab = tab
      } label: {
        Text(notifivation)
          .font(.system(size: 12, weight: .regular, design: .default))
          .foregroundColor(isSelected ? .color("FFFFFF") : .color("616161"))
          .padding(10)
          .padding(.horizontal, 5)
          .background(isSelected ? .color("3544C4") : .clear)
          .cornerRadius(isSelected ? 6 : 0)
          .shadow(color: isSelected ? .color("3544C4").opacity(0.6) : .clear, radius: 34, x: 10, y: 32)
          //.padding(.leading, isSelected ? 9 : 0)
          
      }
    }
  }
  @State var tab: Tab = .update
  var body: some View {
    ScrollView {
      switch tab {
      case .update:
        Update()
      case .message:
        Text("Message")
      case .promo:
        Text("Promo")
      }
    }.safeAreaInset(edge: .top) {
      HStack {
        VStack(alignment: .leading, spacing: 8) {
          HStack(spacing: 3) {
            VStack(alignment: .leading, spacing: 8) {
              Text("Notifications")
                .font(.system(size: 23, weight: .bold, design: .default))
                .foregroundColor(.color("272F4B"))
              Text("Showing 234 Your favourite")
                .font(.system(size: 14, weight: .regular, design: .default))
                .foregroundColor(.color("616161"))
            }
            Spacer()
            Circle()
              .frame(width: 5.71)
            Circle()
              .frame(width: 5.71)
            Circle()
              .frame(width: 5.71)
          }
          HStack(spacing: 4) {
            N(notifivation: "Update", tab: .update, selectedTab: $tab)
            N(notifivation: "Message", tab: .message, selectedTab: $tab)
            N(notifivation: "Promo", tab: .promo, selectedTab: $tab)
          }.padding(.vertical, 4 ).padding(.leading, 4)
            .padding(.trailing, 4)
            .background(.white, in: RoundedRectangle(cornerRadius: 10))
            .padding(.top, 16)
        }
        Spacer()
      }.padding(.top, 14)
        .padding(.bottom, 24)
        .padding(.horizontal, 30)
        .background(.color("F5F6F7"))
    }
  }
}

struct NotificationsScreen_Previews: PreviewProvider {
  static var previews: some View {
    NotificationsScreen()
  }
}
struct Update: View {
  var body: some View {
    VStack{
      VStack(alignment: .leading, spacing: 30) {
        HStack(alignment: .top, spacing: 14) {
          Image("i 59")
            .frame(width: 32, height: 32)
            .background(.color("0064D2"))
            .cornerRadius(64)
            .padding(.top, -6)
          VStack(alignment: .leading, spacing: 4) {
            HStack(spacing: 6) {
              Text("Pandana")
                .font(.system(size: 16, weight: .bold, design: .default))
                .foregroundColor(.color("272F4B"))
              Image("i 60")
            }
            Text("New Movie!")
              .font(.system(size: 12, weight: .regular, design: .default))
              .foregroundColor(.color("272F4B").opacity(0.41))
            Text("Lorem ipsum is place text commonly used in the graphic, print, and…")
              .lineLimit(2)
              .font(.system(size: 12, weight: .regular, design: .default))
              .foregroundColor(.color("272F4B"))
              .lineSpacing(8)
              .padding(.top, 8)
              .padding(.bottom, 10)
            ZStack(alignment: .bottom) {
              Rectangle().frame(width: 170, height: 54).foregroundColor(.color("616161"))
                .shadow(color: .color("616161").opacity(0.7), radius: 74, x: 0, y: 32)
              Image("i 61")
            }
            
          }
        }
        Rectangle().frame(height: 2).foregroundColor(.color("DEE2EE"))
      }.padding(.horizontal, 29).padding(.top, 30)
      VStack(alignment: .leading, spacing: 30) {
        HStack(alignment: .top, spacing: 14) {
          Image("i 62")
            .frame(width: 32, height: 32)
            .background(.color("38A971"))
            .cornerRadius(64)
            .padding(.top, -6)
          VStack(alignment: .leading, spacing: 4) {
            HStack {
              Text("Apps Update")
                .font(.system(size: 16, weight: .bold, design: .default))
                .foregroundColor(.color("272F4B"))
            }
            Text("New Feature V4.3.10")
              .font(.system(size: 12, weight: .regular, design: .default))
              .foregroundColor(.color("272F4B").opacity(0.41))
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore consectetur")
              .font(.system(size: 12, weight: .regular, design: .default))
              .foregroundColor(.color("272F4B"))
              .lineSpacing(8)
              .padding(.top, 8)
              .padding(.bottom, 10)
            Text("Update Now (45MB)")
              .font(.system(size: 12, weight: .regular, design: .default))
              .foregroundColor(.color("272F4B"))
              .padding(.vertical, 10)
              .frame(maxWidth: .infinity)
              .overlay(RoundedRectangle(cornerRadius: 4).stroke(.color("DEE2EE"), lineWidth: 1))
          }
        }
        
      }.padding(.horizontal, 29).padding(.top, 30)
    }//
  }
}
struct N: View {
  var notifivation: String
  @Binding var isSelected: Bool
  var body: some View {
    Button {
      isSelected.toggle()
    } label: {
      Text(notifivation)
        .font(.system(size: 12, weight: .regular, design: .default))
        .foregroundColor(isSelected ? .color("FFFFFF") : .color("616161"))
        .padding(isSelected ? 10 : 0)
        .padding(.horizontal, isSelected ? 5 : 0)
        .background(isSelected ? .color("3544C4") : .clear)
        .cornerRadius(isSelected ? 6 : 0)
        .shadow(color: isSelected ? .color("3544C4").opacity(0.6) : .clear, radius: 34, x: 10, y: 32)
        //.padding(.leading, isSelected ? 9 : 0)
        
    }
  }
}

struct SearchScreen: View {
  @State var recent = [
    Recently.Item(text: "Joker : Put on a happies"),
    Recently.Item(text: "Joker : Put on a happies"),
    Recently.Item(text: "Put on a happies"),
    Recently.Item(text: "Joker : Put on a happies"),
  ]
  @State var tag = [
    Tags.Item(text: "Horror"),
    Tags.Item(text: "Action"),
    Tags.Item(text: "Adventures"),
    Tags.Item(text: "Family Friendly"),
    Tags.Item(text: "Korean Film"),
  ]
  var threeColumnGrid = [GridItem(), GridItem()]
  
  var body: some View {
    ScrollView {
      
      VStack(alignment: .leading, spacing: 15) {
        HStack{
          Text("Popular Tags")
            .font(.system(size: 19, weight: .regular, design: .default))
            .foregroundColor(.color("1C2238").opacity(1))
            .tracking(0.69)
          Spacer()
        }
        VStack(alignment: .leading, spacing: 12) {
          LazyHGrid (rows: threeColumnGrid, alignment: .top, spacing: 12) {
            ForEach(tag) { item in
              Tags(item: item, list: $tag)
            }
//            Tags(text: "Horror", isSelected: false)
//            Tags(text: "Adventures", isSelected: false)
//            Tags(text: "Korean Film", isSelected: false)
          }
//          HStack(spacing: 12) {
//            Tags(text: "Action", isSelected: false)
//            Tags(text: "Family Friendly", isSelected: true)
//          }
        }
        HStack{
          Text("Recently Search")
            .font(.system(size: 19, weight: .regular, design: .default))
            .foregroundColor(.color("1C2238").opacity(1))
            .tracking(0.69)
          Spacer()
          Button {
            withAnimation {
              recent.removeAll()
            }
          } label: {
            Text("Delete all")
              .font(.system(size: 14, weight: .semibold, design: .default))
              .foregroundColor(.color("616161").opacity(1))
          }
        }.padding(.top, 35)
          .padding(.bottom, 10)
        VStack(spacing: 26) {
          ForEach(recent) { item in
            Recently(item: item, list: $recent)
          }
        }
        
      }.padding(.leading, 30)
        .padding(.top, 22)
        .padding(.trailing, 28)
      
    }.safeAreaInset(edge: .top) {
      HStack(spacing: 16) {
      Image("i 63")
        Text("try “Dilan 2012”")
          .font(.system(size: 16, weight: .regular, design: .default))
          .foregroundColor(.color("616161").opacity(0.5))
        Spacer()
        Image("i 64")
      }.padding(.leading, 18)
        .padding(.trailing, 20)
        .padding(.vertical, 23)
        .background(.white)
        .cornerRadius(10)
      .padding(.top, 10)
        .padding(.bottom, 27)
        .padding(.horizontal, 24)
        .background(.color("F5F6F7"))
    }
  }
}

struct SearchScreen_Previews: PreviewProvider {
  static var previews: some View {
    SearchScreen()
  }
}

//struct Tags: View {
//  var text: String
//  var isSelected: Bool
//  var body: some View {
//    HStack(spacing: 5) {
//      Text(text)
//        .font(.system(size: 12, weight: .regular, design: .default))
//        .foregroundColor(.color("616161").opacity(1))
//      Image("i 65")
//
//    }.padding(.vertical, 10)
//      .padding(.leading, 15)
//      .padding(.trailing, 10)
//      .background(.white)
//      .cornerRadius(4)
//      .overlay(RoundedRectangle(cornerRadius: 4).stroke(isSelected ? .clear : .color("979797"), lineWidth: 0.5))
//      .shadow(color: isSelected ? .color("35405A").opacity(0.3) : .clear, radius: 24, x: 0, y: 22)
//
//
//  }
//}
struct Tags: View {
  struct Item: Identifiable {
    var id = UUID()
    var text: String
  }
  //var isSelected: Bool
  var item: Item
  var list: Binding<[Item]>
  @State var isSelected = false
  var body: some View {
    Button{
      isSelected.toggle()
    } label: {
      HStack(spacing: 5) {
              Text(item.text)
                .font(.system(size: 12, weight: .regular, design: .default))
                .foregroundColor(.color("616161").opacity(1))
                .multilineTextAlignment(.leading)
              //Spacer()
              Button {
                withAnimation {
                  list.wrappedValue.removeAll(where: { item in
                    item.id == self.item.id
                  })
                }
              } label: {
                Image("i 65")
              }
            }//.frame(minWidth: 0, maxWidth: .infinity, minHeight: 50, maxHeight: .infinity)
            .multilineTextAlignment(.leading)
              .padding(.vertical, 10)
                .padding(.leading, 15)
                .padding(.trailing, 10)
                .background(.white)
                .cornerRadius(4)
                
                .overlay(RoundedRectangle(cornerRadius: 4).stroke(isSelected ? .clear : .color("979797"), lineWidth: 0.5))
                .shadow(color: isSelected ? .color("35405A").opacity(0.3) : .clear, radius: 24, x: 0, y: 22)
                .padding(.bottom, 48)
    }
      
        
    
  }
}
struct Recently: View {
  struct Item: Identifiable {
    var id = UUID()
    var text: String
  }
  var item: Item
  var list: Binding<[Item]>
  var body: some View {
    VStack(spacing: 23) {
      HStack{
        Text(item.text)
          .font(.system(size: 19, weight: .semibold, design: .default))
          .foregroundColor(.color("1C2238").opacity(1))
        Spacer()
        Button {
          withAnimation {
            list.wrappedValue.removeAll(where: { item in
              item.id == self.item.id
            })
          }
        } label: {
          Image("i 66").padding(.trailing, 6)
        }
      }
      Rectangle().frame(height: 2).foregroundColor(.color("DEE2EE"))
    }
  }
}

struct SearchResultScreen: View {
  @State var sort = [
    Sort.Item(text: "Rating"),
    Sort.Item(text: "Sort by"),
    Sort.Item(text: "Calendar"),
  ]
  @State var isSelectedFilter = false
  var body: some View {
    ScrollView {
      VStack(alignment: .leading, spacing: 24.5) {
        Text("Found 13 Film For You")
          .font(.system(size: 19, weight: .regular, design: .default))
          .foregroundColor(.color("1C2238").opacity(1))
          .tracking(0.69)
          .padding(.bottom, 3.5)
        FilmCard(image: "i 68", name: "On Sale!", producer: "Special Movie Ema", rate: 5.2, genre: "Horror", hours: "1h 37m", isSecondGenre: true, genre2: "Drama")
        FilmCard(image: "i 69", name: "Spesial Joker", producer: "Put on a happies Face", rate: 4.6, genre: "Horror", hours: "1h 50m", isSecondGenre: true, genre2: "Action")
        FilmCard(image: "i 70", name: "Special movie", producer: "R A W", rate: 4.4, genre: "Horror", hours: "2h 37m", isSecondGenre: false, genre2: "1")
      }.padding(.horizontal, 29).padding(.top, 13)
      
    }.safeAreaInset(edge: .top) {
      HStack {
        VStack(alignment: .leading, spacing: 30) {
          HStack(spacing: 16) {
          Image("i 63")
            Text("European Films")
              .font(.system(size: 16, weight: .regular, design: .default))
              .foregroundColor(.color("616161").opacity(0.5))
            Spacer()
            Image("i 64")
          }.padding(.leading, 18)
            .padding(.trailing, 20)
            .padding(.vertical, 23)
            .background(.white)
            .cornerRadius(10)
         
          HStack(spacing: 14) {
            Button{
              isSelectedFilter.toggle()
            } label: {
              Image("i 67")
                .renderingMode(isSelectedFilter ? .template : .original)
                .foregroundColor(isSelectedFilter ? . white : .black)
                            .frame(height: 34)
                            .padding(.horizontal, 8).padding(.leading, 2)
                            .background(isSelectedFilter ? .color("3544C4") : .color("FFFFFF"))
                            .cornerRadius(6)
                            .shadow(color: isSelectedFilter ? .color("3544C4").opacity(0.6) : .color("35405A").opacity(0.3) , radius: isSelectedFilter ? 34 : 24, x: isSelectedFilter ? 10 : 0, y: isSelectedFilter ? 32 : 22)
            }
            
              
            ForEach(sort) { item in
              Sort(item: item, list: $sort)
            }
          }//.padding(.top, 16)
        }
        Spacer()
      }.padding(.top, 10)
        .padding(.bottom, 33)
        .padding(.horizontal, 24)
        .background(.color("F5F6F7"))
    }
  }
}

struct SearchResultScreen_Previews: PreviewProvider {
  static var previews: some View {
    SearchResultScreen()
  }
}

struct Sort: View {
  struct Item: Identifiable {
    var id = UUID()
    var text: String
  }
  var item: Item
  var list: Binding<[Item]>
  
  @State var isSelected = false
 // var text : String
  var body: some View {
      HStack(spacing: 8.68) {
        Button {
          isSelected.toggle()
        } label: {
          Text(item.text)
                    .font(.system(size: 12, weight: .semibold, design: .default))
                    .foregroundColor(isSelected ? .color("FFFFFF") : .color("616161"))
                  if isSelected {
                    Button {
                      withAnimation {
                        list.wrappedValue.removeAll(where: { item in
                          item.id == self.item.id
                        })
                      }
                    } label: {
                      Image("i 71")
                    }
                  }
                }.frame(height: 34)
                .padding(.horizontal, isSelected ? 10 : 14)
                .padding(.trailing, isSelected ? 0 : 3)
                .background(isSelected ? .color("3544C4") : .color("FFFFFF"))
                .cornerRadius(6)
                .shadow(color: isSelected ? .color("3544C4").opacity(0.6) : .color("35405A").opacity(0.3) , radius: isSelected ? 34 : 24, x: isSelected ? 10 : 0, y: isSelected ? 32 : 22)
        }
        
    }
  }

struct Recently45: View {
  struct Item: Identifiable {
    var id = UUID()
    var text: String
  }
  var item: Item
  var list: Binding<[Item]>
  var body: some View {
    VStack(spacing: 23) {
      HStack{
        Text(item.text)
          .font(.system(size: 19, weight: .semibold, design: .default))
          .foregroundColor(.color("1C2238").opacity(1))
        Spacer()
        Button {
          withAnimation {
            list.wrappedValue.removeAll(where: { item in
              item.id == self.item.id
            })
          }
        } label: {
          Image("i 66").padding(.trailing, 6)
        }
      }
      Rectangle().frame(height: 2).foregroundColor(.color("DEE2EE"))
    }
  }
}
