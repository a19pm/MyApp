//
//  Home.swift
//  Alina
//
//  Created by Dmitry on 23/12/2022.
//

import SwiftUI

struct Home: View {
  @State var show = false
  @State var completed = false
  @State var canceled = false
  @State var pending = false
  @State var onGoing = false
  @State var viewTask = false
  @State var isSelectedHome = false
  @State var isSelectedTask = false
  @State var isSelectedGraphic = false
  @State var isSelectedProfile = false
  var body: some View {
    ZStack {
      ScrollView {
        VStack(alignment: .leading, spacing: 0) {
          VStack(alignment: .leading, spacing: 0) {
            HStack {
              Text("Hi, Steven")
                .font(.system(size: 28, weight: .medium, design: .default))
                .foregroundColor(.color("12175E"))
              Spacer()
              Image("Image 6")
                // .resizable()
                .frame(width: 39, height: 39)
                .background(.color("FFFFFF"))
                .cornerRadius(14)
                .shadow(color: .color("F1F7FF"), radius: 13, x: -3, y: 7)
            }
            Text("Let's make this day productive")
              .font(.system(size: 14, weight: .medium, design: .default))
              .foregroundColor(.color("575757"))
              .padding(.top, 2)
              .padding(.bottom, 34)
            Text("My Task")
              .font(.system(size: 24, weight: .medium, design: .default))
              .foregroundColor(.color("12175E"))
          }
          HStack(alignment: .top, spacing: 16) {
            VStack(spacing: 16) {
              VStack {
                Reectangle(image: "Image 7", imageSize: .init(width: 92, height: 69), text: "Completed", count: "86", isDark: true, arrow: $completed)
              }.background {
                BlueRectangle(blurHeight: 93, colorBackground: .color("7DC8E7"), colorArrow: .color("81CAE8"), colorBlur: .color("7DC8E7"), opacity: 0.69)
              }
              VStack {
                Reectangle(image: "Image 9", imageSize: .init(width: 28, height: 28), text: "Canceled", count: "15", isDark: false, arrow: $canceled)
              }.background {
                BlueRectangle(blurHeight: 73, colorBackground: .color("E77D7D"), colorArrow: .color("E88889"), colorBlur: .color("E77D7D"), opacity: 0.71)
              }
            }
            VStack(spacing: 16) {
              VStack {
                Reectangle(image: "Image 8", imageSize: .init(width: 28, height: 28), text: "Pending", count: "15", isDark: false, arrow: $pending)
              }.background {
                BlueRectangle(blurHeight: 87, colorBackground: .color("7D88E7"), colorArrow: .color("9CA6F2"), colorBlur: .color("7D88E7"), opacity: 0.74)
              }
              VStack {
                Reectangle(image: "Image 10", imageSize: .init(width: 92, height: 69), text: "On going", count: "67", isDark: true, arrow: $onGoing)
              }.background {
                BlueRectangle(blurHeight: 96, colorBackground: .color("81E89E"), colorArrow: .color("B0EDC6"), colorBlur: .color("81E89E"), opacity: 0.35)
              }
            }
          }.padding(.top, 15)
            .padding(.bottom, 23)
          HStack {
            Text("Today task")
              .font(.system(size: 24, weight: .medium, design: .default))
              .foregroundColor(.color("12175E"))

            Spacer()
            Button {
              viewTask.toggle()
            } label: {
              Text("View all")
                .font(.system(size: 12, weight: .medium, design: .default))
                .foregroundColor(.color("393F93"))
            }
          }.padding(.bottom, 23)
          VStack(spacing: 8) {
            Card(show: $show, name: "Cleaning Clothes", color: .color("8F99EB"), time: "07:00 - 07:15", colorBackground: .color("8F99EB"))
            Card(show: $show, name: "Cleaning Clothes", color: .color("E88B8C"), time: "07:00 - 07:15", colorBackground: .color("E88B8C"))
            Card(show: $show, name: "Cleaning Clothes", color: .color("1EC1C3"), time: "07:00 - 07:15", colorBackground: .color("1EC1C3"))
          }

        }.padding(.horizontal, 24)
      }.background(.white).safeAreaInset(edge: .bottom) {
        TabDailoz(isSelectedHome: $isSelectedHome, isSelectedTask: $isSelectedTask, isSelectedGraphic: $isSelectedGraphic, isSelectedProfile: $isSelectedProfile)
      }

      if self.completed {
        // Spacer()
        GeometryReader { _ in
          Completed()
        }.frame(maxWidth: .infinity)
          // .frame(alignment: .trailing)
//        .padding(.leading, 206)
//          .padding(.top, 76)
          .background {
            Color.black.opacity(0)
              .edgesIgnoringSafeArea(.all)
              .onTapGesture {
                withAnimation {
                  self.completed.toggle()
                }
              }
          }
      }
      if self.canceled {
        // Spacer()
        GeometryReader { _ in
          Canceled()
        }.frame(maxWidth: .infinity)
          // .frame(alignment: .trailing)
//        .padding(.leading, 206)
//          .padding(.top, 76)
          .background {
            Color.black.opacity(0)
              .edgesIgnoringSafeArea(.all)
              .onTapGesture {
                withAnimation {
                  self.canceled.toggle()
                }
              }
          }
      }
      if self.pending {
        // Spacer()
        GeometryReader { _ in
          Pending()
        }.frame(maxWidth: .infinity)
          // .frame(alignment: .trailing)
//        .padding(.leading, 206)
//          .padding(.top, 76)
          .background {
            Color.black.opacity(0)
              .edgesIgnoringSafeArea(.all)
              .onTapGesture {
                withAnimation {
                  self.pending.toggle()
                }
              }
          }
      }
      if self.onGoing {
        // Spacer()
        GeometryReader { _ in
          OnGoing()
        }.frame(maxWidth: .infinity)
          // .frame(alignment: .trailing)
//        .padding(.leading, 206)
//          .padding(.top, 76)
          .background {
            Color.black.opacity(0)
              .edgesIgnoringSafeArea(.all)
              .onTapGesture {
                withAnimation {
                  self.onGoing.toggle()
                }
              }
          }
      }
      if self.viewTask {
        // Spacer()
        GeometryReader { _ in
          Task()
        }.frame(maxWidth: .infinity)
          // .frame(alignment: .trailing)
//        .padding(.leading, 206)
//          .padding(.top, 76)
          .background {
            Color.black.opacity(0)
              .edgesIgnoringSafeArea(.all)
              .onTapGesture {
                withAnimation {
                  self.viewTask.toggle()
                }
              }
          }
      }
      if self.isSelectedHome {
        // Spacer()
        GeometryReader { _ in
          Home()
        }.frame(maxWidth: .infinity)
          // .frame(alignment: .trailing)
//        .padding(.leading, 206)
//          .padding(.top, 76)
          .background {
            Color.black.opacity(0)
              .edgesIgnoringSafeArea(.all)
              .onTapGesture {
                // withAnimation {
                self.isSelectedHome.toggle()
                // }
              }
          }
      }
      if self.isSelectedTask {
        // Spacer()
        GeometryReader { _ in
          Task()
        }.frame(maxWidth: .infinity)
          // .frame(alignment: .trailing)
//        .padding(.leading, 206)
//          .padding(.top, 76)
          .background {
            Color.black.opacity(0)
              .edgesIgnoringSafeArea(.all)
              .onTapGesture {
                // withAnimation {
                self.isSelectedTask.toggle()
                // }
              }
          }
      }
      if self.isSelectedGraphic {
        // Spacer()
        GeometryReader { _ in
          Graphic()
        }.frame(maxWidth: .infinity)
          // .frame(alignment: .trailing)
//        .padding(.leading, 206)
//          .padding(.top, 76)
          .background {
            Color.black.opacity(0)
              .edgesIgnoringSafeArea(.all)
              .onTapGesture {
                // withAnimation {
                self.isSelectedGraphic.toggle()
                // }
              }
          }
      }
      if self.isSelectedProfile {
        // Spacer()
        GeometryReader { _ in
          Profile1()
        }.frame(maxWidth: .infinity)
          // .frame(alignment: .trailing)
//        .padding(.leading, 206)
//          .padding(.top, 76)
          .background {
            Color.black.opacity(0)
              .edgesIgnoringSafeArea(.all)
              .onTapGesture {
                // withAnimation {
                self.isSelectedProfile.toggle()
                // }
              }
          }
      }
    }
  }

  struct Home_Previews: PreviewProvider {
    static var previews: some View {
      Home()
    }
  }

  struct Reectangle: View {
    var image: String
    var imageSize: CGSize
    var text: String
    var count: String
    var isDark: Bool
    @Binding var arrow: Bool
    var body: some View {
      VStack(alignment: .leading, spacing: 8) {
        HStack {
          Image(image).frame(width: imageSize.width, height: imageSize.height)
          Spacer()
        }.overlay(alignment: .topTrailing) {
          Button {
            arrow.toggle()
          } label: {
            Image(isDark ? "Image 11" : "Image 12")
          }
        }
        Text(text)
          .font(.system(size: 16, weight: .medium, design: .default))
          .foregroundColor(isDark ? .color("12175E") : .white)
        Text("\(count) Task")
          .font(.system(size: 14, weight: .medium, design: .default))
          .foregroundColor(isDark ? .color("12175E") : .white)
          .padding(.top, 1)
      }.padding(15)
    }
  }

  struct BlueRectangle: View {
    var blurHeight: CGFloat
    var colorBackground: Color
    var colorArrow: Color
    var colorBlur: Color
    var opacity: Double
    var body: some View {
      // Background
      Rectangle()
        .fill(LinearGradient(colors: [colorBackground.opacity(1), colorBackground.opacity(opacity)], startPoint: .init(x: 0, y: 1), endPoint: .init(x: 1, y: 0)))
        .cornerRadius(14)
        //      .frame(width: 155, height: 152)
        .overlay(alignment: .topTrailing) {
          // Arrows
          HStack(spacing: 0) {
            Path { path in
              path.move(to: .zero)
              path.addLines([
                .init(x: 0, y: 0),
                .init(x: 39 / 2 + 1, y: 0),
                .init(x: 39, y: 21.5),
                CGPoint(x: 39 / 2 + 1, y: 50),
                .init(x: 0, y: 50),
                CGPoint(x: 39 / 2 + 1, y: 21.5),
              ])
            }.fill(LinearGradient(colors: [colorArrow,
                                           colorArrow.opacity(0)], startPoint: .top, endPoint: .bottom))
              .frame(width: 39, height: 50)
            Path { path in
              path.move(to: .zero)
              path.addLines([
                .init(x: 0, y: 0),
                .init(x: 39 / 2 + 1, y: 0),
                .init(x: 39, y: 21.5),
                CGPoint(x: 39 / 2 + 1, y: 50),
                .init(x: 0, y: 50),
                CGPoint(x: 39 / 2 + 1, y: 21.5),
              ])
            }.fill(LinearGradient(colors: [colorArrow, colorArrow.opacity(0)], startPoint: .top, endPoint: .bottom))
              .frame(width: 39, height: 50)
          }.padding(.trailing, 22)
        }.overlay(alignment: .bottomTrailing) {
          // Blur
          Rectangle().cornerRadius(14)
            .frame(width: 140, height: blurHeight)
            .foregroundColor(colorBlur).blur(radius: 10.8)
            .padding(.bottom, -2)
        }
    }
  }
}

struct Card: View {
  @Binding var show: Bool
  var name: String
  var color: Color
  var time: String
  var colorBackground: Color
  var body: some View {
    VStack(alignment: .leading, spacing: 21) {
      HStack(spacing: 0) {
        Rectangle()
          .frame(width: 2, height: 34.78).foregroundColor(color)
          .padding(.top, 7.11)
          .padding(.trailing, 10)
        VStack(alignment: .leading, spacing: 8) {
          Button(action: {
            withAnimation {
              show.toggle()
            }
          }, label: {
            Text(name)
              .font(.system(size: 16, weight: .medium, design: .default))
              .foregroundColor(.color("2C406E"))
          })
          Text(time)
            .font(.system(size: 14, weight: .medium, design: .default))
            .foregroundColor(.color("9AA8C7"))
        }
        Spacer()
        VStack(spacing: 1.92) {
          Rectangle()
            .frame(width: 1.75, height: 1.75)
          Rectangle()
            .frame(width: 1.75, height: 1.75)
          Rectangle()
            .frame(width: 1.75, height: 1.75)
        }.padding(.bottom, 23)
          .padding(.top, 6)
          .padding(.leading, 19)
      }
      HStack(spacing: 6) {
        Text("Urgent")
          .font(.system(size: 10, weight: .medium, design: .default))
          .foregroundColor(color)
          .padding(.horizontal, 6)
          .padding(.vertical, 3)
          .background(color.opacity(0.2))
          .cornerRadius(3)
        // .frame(height: 20)
        Text("Home")
          .font(.system(size: 10, weight: .medium, design: .default))
          .foregroundColor(color)
          .padding(.horizontal, 6)
          .padding(.vertical, 3)
          .background(color.opacity(0.2))
          .cornerRadius(3)
      }.padding(.leading, 10)
    }.padding(15).background(.color("F9FAFD"), in: Rectangle()).cornerRadius(15)
  }
}

struct Task: View {
  @State var showCalendar = false
  @State var show = false
  @State var addTask = false
  @State var returnBack = false
  @State var isSelectedHome = false
  @State var isSelectedTask = false
  @State var isSelectedGraphic = false
  @State var isSelectedProfile = false
  var body: some View {
    ZStack {
      ZStack {
        ScrollView {
          VStack(spacing: 0) {
            HStack(spacing: 15) {
              Image("Search1")
              Text("Search for task")
                .font(.system(size: 14, weight: .medium, design: .default))
                .foregroundColor(.color("CED0E7"))
              Spacer()
              Image("Close Square")
            }.padding(.horizontal, 20)
              .padding(.vertical, 15)
              .background(.color("F6F6F6"), in: Rectangle()).cornerRadius(15)
            HStack {
              Text("Task")
                .font(.system(size: 24, weight: .medium, design: .default))
                .foregroundColor(.color("10275A"))
              Spacer()
              HStack(spacing: 6) {
                Button(action: {
                  withAnimation {
                    showCalendar.toggle()
                  }
                }, label: {
                  Image("Calendar")
                    .padding(.top, 2)
                })
                Text("August 2021").font(.system(size: 12, weight: .medium, design: .default))
                  .foregroundColor(.color("525F77"))
              }

            }.padding(.top, 31)
              .padding(.bottom, 18)
            HStack(spacing: 0) {
              HStack {
                Day(day: "MO", date: "12")
                Spacer()
                Day(day: "TU", date: "13")
                Spacer()
                Day(day: "WE", date: "14")
                Spacer()
                // .padding(.horizontal, -13)
              }
              HStack {
                Day(day: "TH", date: "15")
                Spacer()
                Day(day: "FR", date: "16")
                Spacer()
                Day(day: "SA", date: "17")
                Spacer()
                Day(day: "SU", date: "18")
              }
            }
            HStack {
              Text("Today")
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundColor(.color("10275A"))
              Spacer()
              Text("09 h 45 min")
                .font(.system(size: 14, weight: .medium, design: .default))
                .foregroundColor(.color("000000"))
            }
            .padding(.top, 27)
            .padding(.bottom, 24)
            Today(time: "07:00", name: "Cleaning Clothes", color: .color("8F99EB"), time2: "07:00 - 07:15", time3: "07:15 - 07:30", color2: .color("E88B8C"), show: $show)
            Today(time: "08:00", name: "Cleaning Clothes", color: .color("E88B8C"), time2: "08:00 - 08:35", time3: "08:00 - 08:55", color2: .color("7EC8E7"), show: $show)
            VStack(alignment: .leading, spacing: 0) {
              Rectangle()
                .frame(height: 1)
                .foregroundColor(.color("E3E8F1"))
              HStack {
                Text("09:00")
                  .font(.system(size: 14, weight: .medium, design: .default))
                  .foregroundColor(.color("2C406E"))
                Text("You don't have any scheduleor  or")
                  .font(.system(size: 12, weight: .medium, design: .default))
                  .foregroundColor(.color("9AA8C7"))
                Button {
                  addTask.toggle()
                } label: {
                  Text("+ Add")
                    .font(.system(size: 12, weight: .medium, design: .default))
                    .foregroundColor(.color("2C406E"))
                }
              }.padding(.bottom, 23)
                .padding(.top, 16)
            }
            Today(time: "10:00", name: "Cleaning Clothes", color: .color("E88B8C"), time2: "08:00 - 08:35", time3: "08:00 - 08:55", color2: .color("7EC8E7"), show: $show)

          }.padding(.horizontal, 24)
        }.background(.white).safeAreaInset(edge: .bottom) {
          TabDailoz(isSelectedHome: $isSelectedHome, isSelectedTask: $isSelectedTask, isSelectedGraphic: $isSelectedGraphic, isSelectedProfile: $isSelectedProfile)
        }
      }
      if self.showCalendar {
        // Spacer()
        GeometryReader { _ in
          Calendar3()
        } // .frame(maxWidth: .infinity)
        // .frame(alignment: .trailing)
        // .padding(.leading, 64)
        .padding(.top, 149)
        .background {
          Color.black.opacity(0.6)
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
              withAnimation {
                self.showCalendar.toggle()
              }
            }
        }
      }
      if self.show {
        // Spacer()
        GeometryReader { _ in
          TaskPopUp()
        } // .frame(maxWidth: .infinity)
        // .frame(alignment: .trailing)
        .padding(.leading, 153)
        .padding(.top, 300)
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
      if self.addTask {
        // Spacer()
        GeometryReader { _ in
          AddTask(tittle: "Add Task", hasType: true, returnBack: $returnBack)
        } // .frame(maxWidth: .infinity)
        // .frame(alignment: .trailing)
//        .padding(.leading, 153)
//        .padding(.top, 300)
        .background {
          Color.black.opacity(0)
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
              // withAnimation {
              self.addTask.toggle()
              // }
            }
        }
      }
      if self.returnBack {
        // Spacer()
        GeometryReader { _ in
          Task()
        } // .frame(maxWidth: .infinity)
        // .frame(alignment: .trailing)
//        .padding(.leading, 153)
//        .padding(.top, 300)
        .background {
          Color.black.opacity(0)
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
              // withAnimation {
              self.returnBack.toggle()
              // }
            }
        }
      }
      if self.isSelectedHome {
        // Spacer()
        GeometryReader { _ in
          Home()
        }.frame(maxWidth: .infinity)
          // .frame(alignment: .trailing)
//        .padding(.leading, 206)
//          .padding(.top, 76)
          .background {
            Color.black.opacity(0)
              .edgesIgnoringSafeArea(.all)
              .onTapGesture {
                // withAnimation {
                self.isSelectedHome.toggle()
                // }
              }
          }
      }
      if self.isSelectedTask {
        // Spacer()
        GeometryReader { _ in
          Task()
        }.frame(maxWidth: .infinity)
          // .frame(alignment: .trailing)
//        .padding(.leading, 206)
//          .padding(.top, 76)
          .background {
            Color.black.opacity(0)
              .edgesIgnoringSafeArea(.all)
              .onTapGesture {
                // withAnimation {
                self.isSelectedTask.toggle()
                // }
              }
          }
      }
      if self.isSelectedGraphic {
        // Spacer()
        GeometryReader { _ in
          Graphic()
        }.frame(maxWidth: .infinity)
          // .frame(alignment: .trailing)
//        .padding(.leading, 206)
//          .padding(.top, 76)
          .background {
            Color.black.opacity(0)
              .edgesIgnoringSafeArea(.all)
              .onTapGesture {
                // withAnimation {
                self.isSelectedGraphic.toggle()
                // }
              }
          }
      }
      if self.isSelectedProfile {
        // Spacer()
        GeometryReader { _ in
          Profile1()
        }.frame(maxWidth: .infinity)
          // .frame(alignment: .trailing)
//        .padding(.leading, 206)
//          .padding(.top, 76)
          .background {
            Color.black.opacity(0)
              .edgesIgnoringSafeArea(.all)
              .onTapGesture {
                // withAnimation {
                self.isSelectedProfile.toggle()
                // }
              }
          }
      }
    }
  }
}

struct Task_Previews: PreviewProvider {
  static var previews: some View {
    Task()
  }
}

struct Day: View {
  var day: String
  var date: String
  @State var isSelected = false
  var body: some View {
    Button {
      isSelected.toggle()
    } label: {
      VStack(spacing: 10) {
        Text(day)
          .font(.system(size: 16, weight: .medium, design: .default))
        Text(date)
          .font(.system(size: 14, weight: .medium, design: .default))
      }.foregroundColor(isSelected ? .white : .color("10275A"))
        .padding(.horizontal, isSelected ? 9 : 0).padding(.vertical, isSelected ? 13 : 0)
        .background(isSelected ? .color("5B67CA") : .clear, in: RoundedRectangle(cornerRadius: 12))
    }
  }
}

struct Today: View {
  var time: String
  var name: String
  var color: Color
  var time2: String
  var time3: String
  var color2: Color
  @Binding var show: Bool
  var body: some View {
    VStack(spacing: 0) {
      Rectangle()
        .frame(height: 1)
        .foregroundColor(.color("E3E8F1"))
      ScrollView(.horizontal) {
        HStack(alignment: .top, spacing: 10) {
          Text(time)
            .font(.system(size: 14, weight: .medium, design: .default))
            .foregroundColor(.color("2C406E"))
            .padding(.top, 9)
            .padding(.trailing, 14)
          Card(show: $show, name: "Cleaning Clothes", color: color, time: time2, colorBackground: color.opacity(0.2))
          Card(show: $show, name: "Cleaning Clothes", color: color2, time: time3, colorBackground: color2.opacity(0.2))
          VStack(alignment: .leading) {}.background(.color("F9FAFD"), in: Rectangle()).cornerRadius(15)
        }.padding(.vertical, 16)

      }.padding(.trailing, -24)
    }
  }
}
