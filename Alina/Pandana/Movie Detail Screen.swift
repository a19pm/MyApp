//
//  Movie Detail Screen.swift
//  Alina
//
//  Created by Dmitry on 19/01/2023.
//

import SwiftUI

struct MovieDetailScreem: View {
  @State var close = false
  @State var show = false
  @State var book = false
  var body: some View {
    ZStack {
      ZStack {
        VStack(spacing: 0) {
          VStack {
            VStack(alignment: .leading, spacing: 0) {
              Button {
                close.toggle()
              } label: {
                Image("i 23")
              }

              ZStack(alignment: .topTrailing) {
                Image("Movie Poster")
                  .background(.clear)
                  .overlay(RoundedRectangle(cornerRadius: 22).stroke(.color("FFFFFF").opacity(0.08), lineWidth: 9))
                  .shadow(color: .color("19142C").opacity(0.43), radius: 74, x: 0, y: 62)
                Image("i 20")
                  .rotationEffect(.degrees(5))
                  .offset(x: 35, y: 12)
              }.frame(maxWidth: .infinity)
                .padding(.top, 33)
                .padding(.bottom, 44)
              Text("The handmaid's Ema")
                .font(.system(size: 30, weight: .heavy, design: .default))
                .foregroundColor(.white)
                .kerning(0.5)
              HStack(alignment: .center, spacing: 0) {
                Text("Horror")
                Circle().frame(width: 5)
                  .padding(.leading, 4).padding(.trailing, 8)
                Text("18+")
                Circle().frame(width: 5)
                  .padding(.leading, 2).padding(.trailing, 9)
                Image("i 21")
                Text("4.5").font(.system(size: 12, weight: .medium, design: .default))
                  .padding(.leading, 6)
              }.font(.system(size: 16, weight: .regular, design: .default))
                .foregroundColor(.color("979797"))
                .padding(.top, 9)
                .padding(.bottom, 39)
              HStack(spacing: 0) {
                VStack(alignment: .leading, spacing: 8) {
                  Text("Length")
                    .font(.system(size: 12, weight: .regular, design: .default))
                    .foregroundColor(.white).opacity(0.43)
                  Text("1h 44m")
                    .font(.system(size: 14, weight: .semibold, design: .default))
                    .foregroundColor(.white)
                }
                Rectangle().frame(width: 1, height: 39)
                  .foregroundColor(.white).opacity(0.14)
                  .padding(.leading, 17.5)
                  .padding(.trailing, 25.5)
                VStack(alignment: .leading, spacing: 8) {
                  Text("Language")
                    .font(.system(size: 12, weight: .regular, design: .default))
                    .foregroundColor(.white).opacity(0.43)
                  Text("Indonesian")
                    .font(.system(size: 14, weight: .semibold, design: .default))
                    .foregroundColor(.white)
                }
                Rectangle().frame(width: 1, height: 39)
                  .foregroundColor(.white).opacity(0.14)
                  .padding(.leading, 20.5)
                  .padding(.trailing, 19.5)

                VStack(alignment: .leading, spacing: 8) {
                  Text("Review")
                    .font(.system(size: 12, weight: .regular, design: .default))
                    .foregroundColor(.white).opacity(0.43)
                  HStack(alignment: .lastTextBaseline) {
                    Text("+44")
                      .font(.system(size: 14, weight: .semibold, design: .default))
                      .foregroundColor(.white)
                    Image("i 22")
                  }
                }
              }.padding(.leading, 33)
                .padding(.top, 24)
                .padding(.trailing, 29)
                .padding(.bottom, 29)
                .background(.white.opacity(0.11))
                .cornerRadius(11)
            }
          }.padding(.horizontal, 30)
            .padding(.top, 21)
            .padding(.bottom, 11)
          if !self.show {
            BottomSheet(showSettings: $show) // .padding(.horizontal, -30)
          }
        }

      }.background {
        BackgroundMovie()
      }
      if self.close {
        // Spacer()
        GeometryReader { _ in
          HomeScreen()
        } // .frame(maxWidth: .infinity)
        // .frame(alignment: .trailing)
//              .padding(.leading, 182)
//              .padding(.top, 123)
        .background {
          Color.black.opacity(0)
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
              withAnimation {
                self.close.toggle()
              }
            }
        }
      }
      if self.show {
        // Spacer()
        GeometryReader { _ in
          BottomSheet(showSettings: $show)
            .safeAreaInset(edge: .bottom) {
              Bac(text: "BOOK NOW", bookNow: $book)
            }.edgesIgnoringSafeArea(.bottom)
        }.frame(maxWidth: .infinity)
          // .frame(alignment: .trailing)
          .background {
            Color.black.opacity(0)
              .edgesIgnoringSafeArea(.all)
              .onTapGesture {
                withAnimation {
                  self.show.toggle()
                }
              }
          }
      }
      if self.book {
        // Spacer()
        GeometryReader { _ in
          TicketScreen()
        } // .frame(maxWidth: .infinity)
        // .frame(alignment: .trailing)
//              .padding(.leading, 182)
        .padding(.top, -35)
        .frame(maxHeight: .infinity)
        .background {
          Color.black.opacity(0)
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
              withAnimation {
                self.book.toggle()
              }
            }
        }
      }
    }
  }
}

struct MovieDetailScreem_Previews: PreviewProvider {
  static var previews: some View {
    MovieDetailScreem()
  }
}

struct BackgroundMovie: View {
  var body: some View {
    ZStack {
      Image("i 19")
      Rectangle()
        .fill(LinearGradient(colors: [.color("2A0718"), .color("2A0718").opacity(0.3)], startPoint: .top, endPoint: .bottom))
    }.ignoresSafeArea()
  }
}

struct BackgroundMovie2: View {
  var body: some View {
    ZStack {
      // Image("i 19").resizable().frame(width: 348)
//      Rectangle()
//        .fill(LinearGradient(colors: [.color("2A0718"), .color("2A0718").opacity(0.3)], startPoint: .top, endPoint: .bottom)).frame(width: 348).cornerRadius(18)
    } // .frame(width: 348)//.ignoresSafeArea()
    .frame(maxWidth: .infinity)
    .background(.black)
  }
}

struct BottomSheet: View {
  @Binding var showSettings: Bool

  var body: some View {
    VStack(spacing: 0) {
      Button {
        showSettings.toggle()
      } label: {
        Rectangle().frame(width: 48, height: 4).foregroundColor(.color("8A93A7"))
          .cornerRadius(8)
      }

      Text("Mark Your Calendar")
        .font(.system(size: 20, weight: .semibold, design: .default))
        .foregroundColor(.color("35405A"))
        .padding(.bottom, 24)
        .padding(.horizontal, 24)
        .padding(.top, 16)
      Rectangle().frame(height: 1).foregroundColor(.color("DEE2EE"))
      ScrollView {
        // .padding(.leading, -24)
        ScrollView(.horizontal) {
          HStack(spacing: 14) {
            DateView(date: "10", month: "June", isSelected: true)
            DateView(date: "11", month: "June", isSelected: false)
            DateView(date: "12", month: "June", isSelected: false)
            DateView(date: "13", month: "June", isSelected: false)
            DateView(date: "14", month: "June", isSelected: false)
          }.padding([.bottom, .horizontal], 122)
            .padding(.leading, 24)
        }.padding([.bottom, .horizontal], -122)
          // .padding(.trailing, -24)
          .padding(.top, 32)
        VStack(alignment: .leading, spacing: 16) {
          Text("Choose your time")
            .font(.system(size: 16, weight: .semibold, design: .default))
            .foregroundColor(.color("35405A"))
            .padding(.leading, 24)
          ScrollView(.horizontal) {
            HStack(spacing: 13) {
              TimeView(time: "09.30 AM", isSelected: true)
              TimeView(time: "08.40 AM", isSelected: false)
              TimeView(time: "07.25 AM", isSelected: false)
              TimeView(time: "06.00 AM", isSelected: false)
            }.padding(.leading, 24)
            // .padding(.trailing, -24)
          } // .padding(.trailing, -24)
          Rectangle().frame(height: 1).foregroundColor(.color("DEE2EE"))
            .padding(.top, 18)
            .padding(.horizontal, 24)
        }.padding(.top, 42)
        ZStack(alignment: .bottom) {
          Poster()
          Text("Hall 5 on third floor*")
            .font(.system(size: 12, weight: .regular, design: .default))
            .foregroundColor(.color("616161"))
            .padding(.bottom, 28.5)
          // .padding(.trailing, 24)
        }.padding(.top, 37)
          .padding(.horizontal, 22)
        Hall().padding(.horizontal, 22) // .padding(.trailing, 24)
        Spacer()
      } //
      // .padding(.leading, 24)

    }.padding(.top, 16)
      .background(.white)
      .cornerRadius(18, corners: [.topRight, .topLeft])
      .edgesIgnoringSafeArea(.bottom)
      .padding(.top, 22)
    // .background(BackgroundMovie2())
    // .safeAreaInset(edge: .bottom) {
    // Bac(text: "BOOK NOW")
    // }.edgesIgnoringSafeArea(.bottom)
  }
}

// struct BottomSheet_Previews: PreviewProvider {
//  static var previews: some View {
//    BottomSheet()
//  }
// }
struct Bac: View {
  var text: String
  @Binding var bookNow: Bool
  var body: some View {
    Button {
      bookNow.toggle()
    } label: {
      VStack {
        Text(text)
          .ignoresSafeArea()
          .font(.system(size: 16, weight: .semibold, design: .default))
          .foregroundColor(.white)
          .frame(width: 316, height: 55)
          .background(.color("C70C3C"))
          .cornerRadius(27.5)
          .frame(maxWidth: .infinity)
          .padding(.vertical, 14)
          .background(.white)
          .overlay(RoundedRectangle(cornerRadius: 1)
            .stroke(.color("BFD2E5"), lineWidth: 1))

      }.shadow(color: .color("35405A").opacity(0.19), radius: 64, x: 0, y: -13)
    }
  }
}

struct DateView: View {
  var date: String
  var month: String
  // var isSelected: Bool
  @State var isSelected = false
  var body: some View {
    VStack(alignment: .center, spacing: 10) {
      Button {
        isSelected.toggle()
      } label: {
        VStack(alignment: .center, spacing: 10) {
          Text(date)
            .font(.system(size: 23, weight: .semibold, design: .default))
            .foregroundColor(isSelected ? .white : .color("35405A"))
          Text(month)
            .font(.system(size: 13, weight: .regular, design: .default))
            .foregroundColor(isSelected ? .white : .color("35405A"))
        }
      }
    }.frame(width: 65, height: 80)
      .background(isSelected ? .color("3544C4") : .color("F5F6F7"))
      .cornerRadius(9)
      .shadow(color: isSelected ? .color("3544C4").opacity(0.3) : .clear, radius: 34, x: 10, y: 32)
  }
}

struct TimeView: View {
  var time: String
  // var isSelected: Bool
  @State var isSelected = false
  var body: some View {
    VStack {
      Button {
        isSelected.toggle()
      } label: {
        Text(time)
          .font(.system(size: 12, weight: .regular, design: .default))
          .foregroundColor(isSelected ? .white : .color("616161"))
      }
    }.frame(width: 87, height: 34)
      .background(isSelected ? .color("3544C4") : .white)
      .cornerRadius(6)
      .overlay(RoundedRectangle(cornerRadius: 6).stroke(.color("979797"), lineWidth: 0.5))
  }
}

struct Poster: View {
  var body: some View {
    VStack(spacing: -10) {
      ZStack(alignment: .bottom) {
        Rectangle().mask(Image("Movie Poster 2")
          .resizable()
          .frame(width: 336, height: 81)).foregroundColor(.color("58627A")).frame(width: 336, height: 80)

        Image("Movie Poster 2")
      }
      GeometryReader { reader in
        Path { path in
          let minX: CGFloat = 0
          let minY: CGFloat = 0
          let maxX: CGFloat = reader.size.width
          let maxY: CGFloat = reader.size.height
          let centerX: CGFloat = maxX / 2

          path.move(to: CGPoint(x: minX, y: maxY))
          path.addQuadCurve(to: CGPoint(x: centerX, y: maxY - 14), control: CGPoint(x: centerX - 72, y: maxY - 14))
          path.addQuadCurve(to: CGPoint(x: maxX, y: maxY), control: CGPoint(x: centerX + 72, y: maxY - 14))
          path.addLine(to: CGPoint(x: maxX - 23, y: minY))
          path.addQuadCurve(to: CGPoint(x: centerX, y: minY - 11), control: CGPoint(x: centerX + 40, y: minY - 11))
          path.addQuadCurve(to: CGPoint(x: minX + 23, y: minY), control: CGPoint(x: centerX - 40, y: minY - 11))
          path.addLine(to: CGPoint(x: minX, y: maxY))
        }
        .fill(LinearGradient(gradient: Gradient(colors: [.black.opacity(0.3), .white.opacity(0.3)]), startPoint: .top, endPoint: .bottom))
        .blur(radius: 7)
      }
      .frame(height: 73)
      .padding(.horizontal, 47)
      Spacer()
    }
  }
}

struct Hall: View {
  var body: some View {
    HStack(spacing: 34) {
      HStack(spacing: 16) {
        VStack(spacing: 14) {
          Rectangle().cornerRadius(5)
            .foregroundColor(.clear)
            .frame(width: 21, height: 21)
          ForEach(0 ..< 4) { _ in
            Rectangle().cornerRadius(5)
              .frame(width: 21, height: 21)
              .foregroundColor(.color("D4DBE2"))
          }
        }
        VStack(spacing: 14) {
          Rectangle().cornerRadius(5)
            .foregroundColor(.clear)
            .frame(width: 21, height: 21)
          ForEach(0 ..< 4) { _ in
            Rectangle().cornerRadius(5)
              .foregroundColor(.clear)
              .frame(width: 21, height: 21)
              .overlay(RoundedRectangle(cornerRadius: 5)
                .stroke(.color("BFD2E5"), lineWidth: 1))
          }
        }
        VStack(spacing: 14) {
          Rectangle().cornerRadius(5)
            .foregroundColor(.clear)
            .frame(width: 21, height: 21)
            .overlay(RoundedRectangle(cornerRadius: 5)
              .stroke(.color("BFD2E5"), lineWidth: 1))
          ForEach(0 ..< 4) { _ in
            Rectangle().cornerRadius(5)
              .frame(width: 21, height: 21)
              .foregroundColor(.color("D4DBE2"))
          }
        }
        VStack(spacing: 14) {
          ForEach(0 ..< 2) { _ in
            Rectangle().cornerRadius(5)
              .foregroundColor(.clear)
              .frame(width: 21, height: 21)
              .overlay(RoundedRectangle(cornerRadius: 5)
                .stroke(.color("BFD2E5"), lineWidth: 1))
          }

          ForEach(0 ..< 3) { _ in
            Rectangle().cornerRadius(5)
              .frame(width: 21, height: 21)
              .foregroundColor(.color("3544C4"))
          }
        }
      }
      HStack(spacing: 16) {
        VStack(spacing: 14) {
          ForEach(0 ..< 2) { _ in
            Rectangle().cornerRadius(5)
              .foregroundColor(.clear)
              .frame(width: 21, height: 21)
              .overlay(RoundedRectangle(cornerRadius: 5)
                .stroke(.color("BFD2E5"), lineWidth: 1))
          }
          Rectangle().cornerRadius(5)
            .frame(width: 21, height: 21)
            .foregroundColor(.color("D4DBE2"))
          ForEach(0 ..< 2) { _ in
            Rectangle().cornerRadius(5)
              .frame(width: 21, height: 21)
              .foregroundColor(.color("3544C4"))
          }
        }
        VStack(spacing: 14) {
          ForEach(0 ..< 5) { _ in
            Rectangle().cornerRadius(5)
              .foregroundColor(.clear)
              .frame(width: 21, height: 21)
              .overlay(RoundedRectangle(cornerRadius: 5)
                .stroke(.color("BFD2E5"), lineWidth: 1))
          }
        }
        VStack(spacing: 14) {
          Rectangle().cornerRadius(5)
            .foregroundColor(.clear)
            .frame(width: 21, height: 21)
          ForEach(0 ..< 2) { _ in
            Rectangle().cornerRadius(5)
              .foregroundColor(.clear)
              .frame(width: 21, height: 21)
              .overlay(RoundedRectangle(cornerRadius: 5)
                .stroke(.color("BFD2E5"), lineWidth: 1))
          }
          ForEach(0 ..< 2) { _ in
            Rectangle().cornerRadius(5)
              .frame(width: 21, height: 21)
              .foregroundColor(.color("D4DBE2"))
          }
        }
        VStack(spacing: 14) {
          Rectangle().cornerRadius(5)
            .foregroundColor(.clear)
            .frame(width: 21, height: 21)
          ForEach(0 ..< 4) { _ in
            Rectangle().cornerRadius(5)
              .foregroundColor(.clear)
              .frame(width: 21, height: 21)
              .overlay(RoundedRectangle(cornerRadius: 5)
                .stroke(.color("BFD2E5"), lineWidth: 1))
          }
        }
      }
    }
  }
}

// Rectangle().cornerRadius(5)
//  .frame(width: 21, height: 21)
//  .overlay(RoundedRectangle(cornerRadius: 5)
//    .stroke(.color("E3EAFF"), lineWidth: 0.79 ))
struct TicketScreen: View {
  var body: some View {
    ZStack {
      BackgroundTicketScreen()
      VStack {
        HStack(spacing: 24) {
          Image("i 25")
          Text("Ticket Movie")
            .font(.system(size: 22, weight: .regular, design: .default))
            .foregroundColor(.white)
          Spacer()
        }
        VStack(spacing: 0) {
          Image("i 26")
          VStack(alignment: .leading, spacing: 0) {
            Text("Joker : Put on a happy face")
              .font(.system(size: 18, weight: .semibold, design: .default))
              .foregroundColor(.color("26313D"))
            Text("136 Metropolitan Ave, Brooklyn")
              .font(.system(size: 12, weight: .regular, design: .default))
              .foregroundColor(.color("26313D").opacity(0.88))
              .padding(.top, 8)
              .padding(.bottom, 20)
            HStack {
              VStack(alignment: .leading, spacing: 4) {
                Text("Salon")
                  .font(.system(size: 14, weight: .regular, design: .default))
                  .foregroundColor(.color("35405A"))
                Text("03")
                  .font(.system(size: 16, weight: .semibold, design: .default))
                  .foregroundColor(.color("35405A"))
              }
              Spacer()
              VStack(alignment: .leading, spacing: 4) {
                Text("Row")
                  .font(.system(size: 14, weight: .regular, design: .default))
                  .foregroundColor(.color("35405A"))
                Text("03")
                  .font(.system(size: 16, weight: .semibold, design: .default))
                  .foregroundColor(.color("35405A"))
              }
              Spacer()
              VStack(alignment: .leading, spacing: 4) {
                Text("Movies")
                  .font(.system(size: 14, weight: .regular, design: .default))
                  .foregroundColor(.color("35405A"))
                Text("D3")
                  .font(.system(size: 16, weight: .semibold, design: .default))
                  .foregroundColor(.color("35405A"))
              }
              Spacer()
              VStack(alignment: .leading, spacing: 4) {
                Text("Seat")
                  .font(.system(size: 14, weight: .regular, design: .default))
                  .foregroundColor(.color("35405A"))
                Text("A02")
                  .font(.system(size: 16, weight: .semibold, design: .default))
                  .foregroundColor(.color("35405A"))
              }
            }.padding(.vertical, 23.5)
              .padding(.horizontal, 20.5)
              .background(.color("F5F6F7"))
              .cornerRadius(8)
            HStack {
              VStack(alignment: .leading, spacing: 21) {
                Text("Cinema")
                Text("Order ID")
                  .padding(.bottom, 2)
                Text("Number Ticket")
              }.font(.system(size: 16, weight: .regular, design: .default))
                .foregroundColor(.color("464646").opacity(0.42))
              Spacer()
              VStack(alignment: .trailing, spacing: 18) {
                Text("Rizky Film")
                Text("13355431")
                  .padding(.bottom, 2)
                Text("#3514aa112")
              }.font(.system(size: 16, weight: .semibold, design: .default))
                .foregroundColor(.color("464646"))
            }.padding(.top, 22)
              .padding(.bottom, 34.5)
            HStack {
              // Circle().frame(height: 25).padding(.leading, -13).foregroundColor(.black).clipShape(Circle())
              DottedLine()
                .stroke(style: StrokeStyle(lineWidth: 1, dash: [7]))
                .frame(height: 1)
                .foregroundColor(.color("DEE2EE"))
              // Circle().frame(height: 25).padding(.trailing, -13)
            }

            Image("i 27")
              .padding(.top, 25.5)
              .padding(.bottom, 10)
            Text("Code : 223 113 13")
              .font(.system(size: 12, weight: .regular, design: .default))
              .foregroundColor(.color("26313D").opacity(0.49)).frame(maxWidth: .infinity)
          }.padding(.top, 20)
            .padding(.bottom, 14)
            .padding(.horizontal, 25)
            .background {
              TicketBackground()
            }
        }

      }.padding(.horizontal, 30)

    }.background(.white)
  }
}

struct TicketScreen_Previews: PreviewProvider {
  static var previews: some View {
    TicketScreen()
  }
}

struct BackgroundTicketScreen: View {
  var body: some View {
    ZStack(alignment: .top) {
      ZStack(alignment: .center) {
        Rectangle()
          .fill(LinearGradient(colors: [.color("166B5D"), .white.opacity(0)], startPoint: .top, endPoint: .bottom))
        Rectangle()
          .fill(LinearGradient(colors: [.clear, .white], startPoint: .top, endPoint: .bottom)).frame(height: 800)
      }

      Image("i 24") // .resizable()//.frame(width: 348)

    }.ignoresSafeArea()
    // .frame(maxWidth: .infinity)
    // .background(.black)
  }
}

struct TicketBackground: View {
  var body: some View {
    ZStack(alignment: .bottom) {
      Rectangle()
        .foregroundColor(.white)
        .cornerRadius(18, corners: [.bottomLeft, .bottomRight]) // destination
      // .shadow(color: .color("000000").opacity(0.17), radius: 139, x: 0, y: 108)
      HStack(spacing: 0) {
        Circle() // source
          .trim(from: 0.5, to: 1)
          .rotationEffect(.degrees(90))
          .blendMode(.destinationOut)
          .frame(width: 25)
          .padding(.leading, -12.6)
        Spacer()
        Circle() // source
          .trim(from: 0.5, to: 1)
          .rotationEffect(.degrees(270))
          .blendMode(.destinationOut)
          .frame(width: 25)
          .padding(.trailing, -12.5)
      }.padding(.bottom, 99)
    }
    .compositingGroup()
    .shadow(color: .color("000000").opacity(0.17), radius: 139, x: 0, y: 108)
    // .padding(.horizontal, 30)
    // .background(.white)

    // .padding(.horizontal, 30)
  }
}
