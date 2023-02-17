//
//  ProfileScreen.swift
//  Alina
//
//  Created by Dmitry on 21/01/2023.
//

import SwiftUI

struct FavouriteScreen: View {
  var body: some View {
    ScrollView {
      VStack(spacing: 24.5) {
        FilmCard(image: "i 38", name: "Un Film Dè", producer: "The Swallow ", rate: 4.6, genre: "Horror", hours: "1h 37m", isSecondGenre: false, genre2: "1")
        FilmCard(image: "i 43", name: "AVATAR", producer: "James Cameroon ", rate: 4.6, genre: "Horror", hours: "1h 37m", isSecondGenre: false, genre2: "1")
        FilmCard(image: "i 44", name: "Un Film Dè", producer: "NÈŹNĀ", rate: 4.6, genre: "Horror", hours: "1h 37m", isSecondGenre: false, genre2: "1")
      }.padding(.horizontal, 29).padding(.top, 29)

    }.safeAreaInset(edge: .top) {
      HStack {
        VStack(alignment: .leading, spacing: 8) {
          Text("My favourite")
            .font(.system(size: 23, weight: .bold, design: .default))
            .foregroundColor(.color("272F4B"))
          Text("Showing 234 Your favourite")
            .font(.system(size: 14, weight: .regular, design: .default))
            .foregroundColor(.color("616161"))
          HStack(spacing: 14) {
            GenresFavourite(genre: "All")
            GenresFavourite(genre: "Action")
            GenresFavourite(genre: "Adventure")
          }.padding(.top, 16)
        }
        Spacer()
      }.padding(.top, 14)
        .padding(.bottom, 27)
        .padding(.horizontal, 30)
        .background(.color("F5F6F7"))
    }
  }
}

struct FavouriteScreen_Previews: PreviewProvider {
  static var previews: some View {
    FavouriteScreen()
  }
}

struct GenresFavourite: View {
  var genre: String
  @State var isSelected = false
  var body: some View {
    Button {
      isSelected.toggle()
    } label: {
      Text(genre)
        .font(.system(size: 12, weight: .regular, design: .default))
        .foregroundColor(isSelected ? .color("FFFFFF") : .color("616161"))
        .padding(10)
        .background(isSelected ? .color("3544C4") : .color("FFFFFF"))
        .cornerRadius(6)
        .shadow(color: isSelected ? .color("3544C4") : .color("35405A").opacity(isSelected ? 0.6 : 0.3), radius: isSelected ? 34 : 24, x: isSelected ? 10 : 0, y: isSelected ? 32 : 22)
    }
  }
}

struct MyfavBack: View {
  var body: some View {
    VStack {
      Rectangle().foregroundColor(.color("F5F6F7"))
    }.ignoresSafeArea()
  }
}

struct FilmCard: View {
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
    VStack(alignment: .leading, spacing: 24) {
      HStack(alignment: .center, spacing: 28) {
        ZStack(alignment: .topTrailing) {
          ZStack(alignment: .bottom) {
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
        }
        VStack(alignment: .leading, spacing: 5) {
          Text("\(name) :\n\(producer)")
            .font(.system(size: 16, weight: .semibold, design: .default))
            .foregroundColor(.color("1C2238"))
            .lineSpacing(4)

          HStack(spacing: 6) {
            ForEach(0 ..< 5) { i in
              Image(i >= Int(rate) ? "i 41" : "i 40")
            }
            Text(rate.description)
              .font(.system(size: 12, weight: .semibold, design: .default))
              .foregroundColor(.color("333333"))
              .padding(.leading, 4)
          }
          HStack {
            Text(genre)
              .font(.system(size: 10, weight: .regular, design: .default))
              .foregroundColor(.color("616161"))
              .padding(4)
              .overlay(RoundedRectangle(cornerRadius: 4)
                .stroke(.color("979797"), lineWidth: 0.5))
              .padding(.top, 4)
              .padding(.bottom, 6)
            if isSecondGenre {
              Text(genre2)
                .font(.system(size: 10, weight: .regular, design: .default))
                .foregroundColor(.color("616161"))
                .padding(4)
                .overlay(RoundedRectangle(cornerRadius: 4)
                  .stroke(.color("979797"), lineWidth: 0.5))
                .padding(.top, 4)
                .padding(.bottom, 6)
            }
          }
          HStack {
            Image("i 42")
            Text(hours)
              .font(.system(size: 12, weight: .semibold, design: .default))
              .foregroundColor(.color("1C2238"))
          }
          HStack {}
        }
      }
      Rectangle().frame(height: 1).foregroundColor(.color("DEE2EE"))
    }
  }
}

struct PersonalizeScreen: View {
  @State var book = false
  var body: some View {
    VStack {
      HStack {
        Image("i 52")
        Spacer()
      }.padding(.horizontal, 10)
      Text("What movie categories do you like and are favorites?")
        .multilineTextAlignment(.center)
        .font(.system(size: 22, weight: .semibold, design: .default))
        .foregroundColor(.color("393939"))
        .padding(.top, 69)
        .padding(.bottom, 43)
      VStack(spacing: 12.64) {
        HStack(spacing: 8) {
          GenreCard(genre: "Horror", isSelected: false)
          GenreCard(genre: "Adventures", isSelected: false)
          GenreCard(genre: "Drama", isSelected: true)
        }
        HStack(spacing: 8) {
          GenreCard(genre: "Action", isSelected: false)
          GenreCard(genre: "Child Film", isSelected: false)
          GenreCard(genre: "Korean Film", isSelected: false)
        }
        HStack(spacing: 8) {
          GenreCard(genre: "18+ Only", isSelected: true)
          GenreCard(genre: "Family Friendly", isSelected: false)
        }
        HStack(spacing: 8) {
          GenreCard(genre: "Horror", isSelected: false)
          GenreCard(genre: "Adventures", isSelected: false)
          GenreCard(genre: "Drama", isSelected: true)
        }
        HStack(spacing: 8) {
          GenreCard(genre: "Action", isSelected: false)
          GenreCard(genre: "Child Film", isSelected: false)
          GenreCard(genre: "Korean Film", isSelected: false)
        }
        HStack(spacing: 8) {
          GenreCard(genre: "18+ Only", isSelected: true)
          GenreCard(genre: "Family Friendly", isSelected: false)
        }
      }

      HStack(spacing: 20) {
        Path { path in
          path.move(to: CGPoint(x: 0, y: 0))
          path.addLine(to: CGPoint(x: 20, y: 0))
          path.addLine(to: CGPoint(x: 20, y: 8))
          path.addLine(to: CGPoint(x: 0, y: 8))
        }.stroke(style: StrokeStyle(lineWidth: 4, lineCap: .round, dash: [20]))
          .trim(from: 0, to: 0.58)
          .frame(width: 20, height: 4)
          .foregroundColor(.color("979797"))

        Path { path in
          path.move(to: CGPoint(x: 0, y: 0))
          path.addLine(to: CGPoint(x: 100, y: 0))
          path.addLine(to: CGPoint(x: 100, y: 8))
          path.addLine(to: CGPoint(x: 0, y: 8))
        }.stroke(style: StrokeStyle(lineWidth: 4, lineCap: .round, dash: [20]))
          .trim(from: 0, to: 0.58)
          .foregroundColor(.color("979797").opacity(0.25))
      }.frame(width: 140, height: 4)
        .padding(.top, 77)
      Spacer()
    }.padding(.top, 21)
      .padding(.horizontal, 20)
      .safeAreaInset(edge: .bottom) {
        Bac(text: "CONTINUE", bookNow: $book)
      }.edgesIgnoringSafeArea(.bottom)
  }
}

struct PerssonalizeScreen_Previews: PreviewProvider {
  static var previews: some View {
    PersonalizeScreen()
  }
}

struct GenreCard: View {
  var genre: String
  @State var isSelected = false
  var body: some View {
    Button {
      isSelected.toggle()
    } label: {
      Text(genre)
        .font(.system(size: 12.48, weight: .regular, design: .default))
        .foregroundColor(isSelected ? .white : .color("616161"))
        .padding(.horizontal, 23).padding(.vertical, 10)
        .background(isSelected ? .color("3544C4") : .color("F5F6F7"))
        .cornerRadius(4.16)
        .shadow(color: isSelected ? .color("3544C4").opacity(0.6) : .clear, radius: 34, x: 10, y: 32)
    }
  }
}

struct ProfileScreen: View {
  @State var showSettings = false
  var body: some View {
    ZStack {
      VStack {
        HStack(alignment: .top) {
          Spacer()
          VStack(spacing: 0) {
            ZStack(alignment: .topTrailing) {
              ZStack {
                Circle().frame(width: 109).foregroundColor(.color("464646")).shadow(color: .color("4C1216").opacity(0.7), radius: 34, x: 0, y: 32)
                Image("i 45")
              }
              Image("i 46")
                .padding(9)
                .background(.color("38A971")).cornerRadius(20)
                .overlay(Circle().stroke(Color.color("FFFFFF"), lineWidth: 3))
                .offset(x: 0, y: 5)
            }
            Text("Jessica Liu")
              .font(.system(size: 24, weight: .semibold, design: .default))
              .foregroundColor(.color("35405A"))
              .padding(.top, 26)
              .padding(.bottom, 9)
            Text("@Jeje_liu")
              .font(.system(size: 14, weight: .regular, design: .default))
              .foregroundColor(.color("B2B6C0"))
          }.padding(.top, 5).padding(.leading, 24)
          Spacer()
          Button {
            showSettings.toggle()
          } label: {
            Image("i 47")
          }
        }
        HStack {
          HStack(spacing: 0) {
            Image("i 48")
            VStack {
              Text("44920")
                .font(.system(size: 12, weight: .bold, design: .default))
                .foregroundColor(.color("35405A").opacity(0.8))
              Text("Place")
                .font(.system(size: 12, weight: .bold, design: .default))
                .foregroundColor(.color("35405A").opacity(0.38))
            }
            Image("i 53")
          }
          Spacer()
          VStack {
            Text("03")
              .font(.system(size: 16, weight: .semibold, design: .default))
              .foregroundColor(.color("35405A"))
            Text("Want")
              .font(.system(size: 12, weight: .bold, design: .default))
              .foregroundColor(.color("35405A").opacity(0.38))
          }
          Spacer()
          VStack {
            Text("02")
              .font(.system(size: 16, weight: .semibold, design: .default))
              .foregroundColor(.color("35405A"))
            Text("Watched")
              .font(.system(size: 12, weight: .bold, design: .default))
              .foregroundColor(.color("35405A").opacity(0.38))
          }
          Spacer()
          VStack {
            Text("08")
              .font(.system(size: 16, weight: .semibold, design: .default))
              .foregroundColor(.color("35405A"))
            Text("Series")
              .font(.system(size: 12, weight: .bold, design: .default))
              .foregroundColor(.color("35405A").opacity(0.38))
          }
        }.padding(.top, 26).padding(.bottom, 18).padding(.leading, 20).padding(.trailing, 18)
          .background(.white)
          .cornerRadius(8)
          .shadow(color: .color("35405A").opacity(0.5), radius: 74, x: 0, y: 52)
          .padding(.vertical, 31)
        VStack(alignment: .leading) {
          HStack(alignment: .top, spacing: 9) {
            GenreCard2(genre: "Want", isSelected: true)
            GenreCard2(genre: "Watched", isSelected: false)
            GenreCard2(genre: "Series", isSelected: false)
            Spacer()
            Image("i 54")
              .padding(8).padding(.leading, 2).padding(.top, 1)
              .background()
              .cornerRadius(6)
              .shadow(color: .color("35405A").opacity(0.13), radius: 24, x: 0, y: 22)
          }
          HStack {
            WantMovieCard(image: "i 49", rate: "7.2")
            Spacer()
            WantMovieCard(image: "i 50", rate: "7.2")
          }.padding(.top, 26)
        }.frame(maxWidth: .infinity)
          .padding(.top, 23)
          .padding(.leading, 32)
          .padding(.trailing, 30)
          .background(.white) // .padding(.horizontal, -30)
          .cornerRadius(31, corners: [.topLeft, .topRight])
          .padding(.horizontal, -30)
        Spacer()
      }.padding(.top, 21).padding(.horizontal, 30)
      if self.showSettings {
        // Spacer()
        GeometryReader { _ in
          SettingsProfile()
        } // .frame(maxWidth: .infinity)
        // .frame(alignment: .trailing)
//              .padding(.leading, 182)
        // .padding(.top, -35)
        .frame(maxHeight: .infinity)
        .background {
          Color.black.opacity(0)
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
              withAnimation {
                self.showSettings.toggle()
              }
            }
        }
      }
    }
  }
}

struct ProfileScreen_Previews: PreviewProvider {
  static var previews: some View {
    ProfileScreen()
  }
}

struct WantMovieCard: View {
  var image: String
  var rate: String
  @State var isLiked = false

  var body: some View {
    ZStack(alignment: .top) {
      Image(image)
        .resizable()
        .frame(width: 154.68, height: 195.23)
        .clipShape(RoundedRectangle(cornerRadius: 16.52))

      HStack(alignment: .top) {
        HStack(spacing: 4.51) {
          Image("i 16")
            .resizable()
            .frame(width: 12, height: 12)
          Text(rate)
            .font(.system(size: 10.51, weight: .semibold, design: .default))
            .foregroundColor(.white)
        }.padding(.vertical, 6)
          .padding(.horizontal, 10)
          .background(.ultraThinMaterial)

          .cornerRadius(12.01)

        Spacer()
        Button {
          isLiked.toggle()
        } label: {
          Image(isLiked ? "i 39" : "i 17")
            .resizable()
            .frame(width: 11, height: 10)
            .padding(6)
            .padding(.horizontal, 2)
            // .background(.white.opacity(0.19))
            .background(.ultraThinMaterial)
            .cornerRadius(12)
        }
      }.padding(15)
    }.frame(width: 155, height: 196)
  }
}

struct GenreCard2: View {
  var genre: String
  // var isSelected: Bool
  @State var isSelected = false
  var body: some View {
    Button {
      isSelected.toggle()
    } label: {
      Text(genre)
        .font(.system(size: 12.48, weight: .regular, design: .default))
        .foregroundColor(isSelected ? .white : .color("616161"))
        .padding(.horizontal, 12).padding(.vertical, 10)
        .background(isSelected ? .color("3544C4") : .color("F5F6F7"))
        .cornerRadius(4.16)
        .shadow(color: isSelected ? .color("3544C4").opacity(1) : .clear, radius: 34, x: 10, y: 32)
    }
  }
}

struct SettingsProfile: View {
  var body: some View {
    VStack(spacing: 0) {
      ScrollView {
        VStack(spacing: 0) {
          Text("Settings")
            .font(.system(size: 20, weight: .semibold, design: .default))
            .foregroundColor(.color("35405A"))
          Rectangle()
            .frame(height: 1)
            .foregroundColor(.color("DEE2EE"))
            .padding(.top, 24).padding(.bottom, 38)
          ZStack(alignment: .bottomTrailing) {
            Image("i 56")
            Image("i 55")
              .padding(11)
              .background(.color("F5F6F7")).cornerRadius(20)
              .overlay(Circle().stroke(Color.color("FFFFFF"), lineWidth: 3))
              .offset(x: 8, y: -3)
          }.frame(maxWidth: .infinity)
            .padding(.bottom, 27)
          VStack(spacing: 32.5) {
            SettingsCard(name: "Name", text: "Jessica Liu", ifHelp: false)
            SettingsCard(name: "Username", text: "@Jeje_liu", ifHelp: false)
            SettingsCard(name: "Bio", text: "Genius,Billionare, Playgirl", ifHelp: false)
            VStack(alignment: .leading, spacing: 13) {
              Text("Gender")
                .font(.system(size: 19, weight: .regular, design: .default))
                .foregroundColor(.color("353535").opacity(0.4))
              HStack(spacing: 13) {
                GenderView(gender: "Male")
                GenderView(gender: "Female")
                Spacer()
              }
            }.padding(.bottom, 5.5)
            SettingsCard(name: "Help", text: "Report a problem", ifHelp: true)
          }.padding(.horizontal, 32)
        }
      }.padding(.top, 31).background(.white).cornerRadius(18, corners: [.topLeft, .topRight]).padding(.top, 22).edgesIgnoringSafeArea(.bottom)
    }.frame(maxWidth: .infinity)
      .background {
        BackgroundMovie42()
      }.background(.black)
    // .ignoresSafeArea()
  }
}

struct GenderView: View {
  var gender: String
  @State var isSelected = false
  var body: some View {
    Button {
      isSelected.toggle()
    } label: {
      Text(gender)
        .font(.system(size: 12, weight: .regular, design: .default))
        .foregroundColor(isSelected ? .white : .color("616161"))
        .frame(width: 87, height: 34)
        .background(isSelected ? .color("3544C4") : .clear)
        .overlay(RoundedRectangle(cornerRadius: 6)
          .stroke(isSelected ? .color("979797") : .clear, lineWidth: isSelected ? 0 : 0.5))
        .cornerRadius(6)
    }
//    Text(gender)
//      .font(.system(size: 12, weight: .regular, design: .default))
//      .foregroundColor(isSelected ? .white : .color("616161"))
//      .frame(width: 87, height: 34)
//      .background(isSelected ? .color("3544C4") : .clear)
//      .overlay(RoundedRectangle(cornerRadius: 6)
//        .stroke(isSelected ? .color("979797") : .clear, lineWidth: isSelected ? 0 : 0.5 ))
//      .cornerRadius(6)
//    Text("Female")
//      .font(.system(size: 12, weight: .regular, design: .default))
//      .foregroundColor(.color("616161"))
//      .frame(width: 87, height: 34)
//
//      .cornerRadius(6)
  }
}

struct SettingsProfile_Previews: PreviewProvider {
  static var previews: some View {
    SettingsProfile()
  }
}

struct BackgroundMovie42: View {
  var body: some View {
    ZStack {
      // Image("i 19").resizable().frame(width: 348)
      Rectangle()
        .foregroundColor(.color("626262"))
        .cornerRadius(12).padding(.top, 5).padding(.horizontal, 14)
    } // .frame(width: 348)//.ignoresSafeArea()
    .frame(maxWidth: .infinity)
    // .background(.black)
  }
}

struct SettingsCard: View {
  var name: String
  var text: String
  var ifHelp: Bool
  var body: some View {
    VStack(alignment: .leading, spacing: 5) {
      Text(name)
        .font(.system(size: 19, weight: .regular, design: .default))
        .foregroundColor(.color("353535").opacity(0.4))
      HStack {
        Text(text)
          .font(.system(size: 20, weight: .semibold, design: .default))
          .foregroundColor(.color("353535"))

        if ifHelp {
          Spacer()
          Image("i 57")
        }
      }
      Rectangle()
        .frame(height: 1)
        .foregroundColor(.color("DEE2EE"))
        .padding(.top, 3)
    }
  }
}
