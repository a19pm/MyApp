//
//  Personal.swift
//  Alina
//
//  Created by Dmitry on 16/01/2023.
//

import SwiftUI
struct UpView: View {
  var title: String
  @Binding var returnBackProfile: Bool
  @Binding var showCalendar: Bool
  var body: some View {
    ZStack {
      ScrollView {
        VStack(alignment: .leading, spacing: 0) {
          HStack {
            Button {
              returnBackProfile.toggle()
            } label: {
              Image("Image 26")
                .padding(.horizontal, 20.5)
                .padding(.top, 18)
                .padding(.bottom, 16)
                .background(.white)
                .cornerRadius(14)
                .shadow(color: .color("F1F7FF"), radius: 13, x: -3, y: 7)
            }

            Spacer()
            Text(title)
              .font(.system(size: 18, weight: .medium, design: .rounded))
              .padding(.trailing, 48)
            Spacer()
          }
          HStack {
            HStack(spacing: 15) {
              Image("Search1")
              Text("Search for task")
                .font(.system(size: 14, weight: .medium, design: .default))
                .foregroundColor(.color("C8CDD9"))
              Spacer()
              Image("Image 29")
            }.padding(.horizontal, 20)
              .padding(.vertical, 15)
              .background(.color("F6F6F6"), in: Rectangle()).cornerRadius(15)
            Button {
              showCalendar.toggle()
            } label: {
              Image("Image 30")
                .padding(13)
                .background(.color("F6F6F6"))
                .cornerRadius(15)
            }
          }.padding(.top, 31)
            .padding(.bottom, 23)
        }
      }
    }
  }
}

struct Personal: View {
  @State var addPersonal = false
  @State var returnBack = false
  @State var returnProfile = false
  @State var showCalendar = false

  var body: some View {
    ZStack {
      ScrollView {
        VStack(alignment: .leading, spacing: 0) {
          UpView(title: "Personal", returnBackProfile: $returnProfile, showCalendar: $showCalendar)

          VStack(spacing: 18) {
            CardPersonal(name: "Cleaning Clothes", color: .color("8F81FE"), colorUrgent: .color("8F81FE"), time: "07:00 - 07:15", colorBackground: .color("ECEAFF"), colorBack: .color("F6F7FF"))
            CardPersonal(name: "Cleaning Clothes", color: .color("8F81FE"), colorUrgent: .color("8F81FE"), time: "07:15 - 07:35", colorBackground: .color("ECEAFF"), colorBack: .color("F6F7FF"))
            CardPersonal(name: "Cleaning Clothes", color: .color("8F81FE"), colorUrgent: .color("8F81FE"), time: "07:00 - 07:15", colorBackground: .color("ECEAFF"), colorBack: .color("F6F7FF"))
            CardPersonal(name: "Cleaning Clothes", color: .color("8F81FE"), colorUrgent: .color("8F81FE"), time: "07:15 - 07:35", colorBackground: .color("ECEAFF"), colorBack: .color("F6F7FF"))
          }
          Spacer()
          HStack {
            Spacer()
            Button {
              addPersonal.toggle()
            } label: {
              ZStack {
                Circle()
                  .fill(LinearGradient(colors: [.color("5B67CA"), .color("A3A9D9")], startPoint: .topTrailing, endPoint: .bottomLeading))
                  .frame(width: 50)
                  .shadow(color: .color("F1F7FF"), radius: 13, x: -3, y: 7)
                // .background(in: Circle(), fillStyle: LinearGradient(colors: [.color("5B67CA"), .color("A3A9D9")], startPoint: .bottomLeading, endPoint: .topTrailing))
                Text("+")
                  .font(.system(size: 24))
                  .foregroundColor(.white)
              }
            }

          }.ignoresSafeArea().padding(.top, 8)
        }

      }.padding(.horizontal, 24)
        .background(.white)
      if self.addPersonal {
        // Spacer()
        GeometryReader { _ in
          AddTask(tittle: "Add Personal", hasType: false, returnBack: $returnBack)
        } // .frame(maxWidth: .infinity)
        // .frame(alignment: .trailing)
        // .padding(.leading, 64)
        // .padding(.top, 126)
        .background {
          Color.black.opacity(0.6)
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
              // withAnimation {
              self.addPersonal.toggle()
              // }
            }
        }
      }
      if self.returnBack {
        // Spacer()
        GeometryReader { _ in
          Personal()
        } // .frame(maxWidth: .infinity)
        // .frame(alignment: .trailing)
        // .padding(.leading, 64)
        // .padding(.top, 126)
        .background {
          Color.black.opacity(0.6)
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
              // withAnimation {
              self.returnBack.toggle()
              // }
            }
        }
      }
      if self.returnProfile {
        // Spacer()
        GeometryReader { _ in
          Profile1()
        } // .frame(maxWidth: .infinity)
        // .frame(alignment: .trailing)
        // .padding(.leading, 64)
        // .padding(.top, 126)
        .background {
          Color.black.opacity(0)
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
              // withAnimation {
              self.returnProfile.toggle()
              // }
            }
        }
      }
      if self.showCalendar {
        // Spacer()
        GeometryReader { _ in
          Filter()
        } // .frame(maxWidth: .infinity)
        // .frame(alignment: .trailing)
        // .padding(.leading, 64)
        .padding(.top, 170)
        .background {
          Color.black.opacity(0.6)
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
              // withAnimation {
              self.showCalendar.toggle()
              // }
            }
        }
      }
    }
  }
}

struct Personal_Previews: PreviewProvider {
  static var previews: some View {
    Personal()
  }
}

struct CardPersonal: View {
  var name: String
  var color: Color
  var colorUrgent: Color
  var time: String
  var colorBackground: Color
  var colorBack: Color

  var body: some View {
    VStack(alignment: .leading, spacing: 21) {
      HStack(spacing: 0) {
        Rectangle()
          .frame(width: 2, height: 34.78).foregroundColor(color)
          .padding(.top, 7.11)
          .padding(.trailing, 10)
        VStack(alignment: .leading, spacing: 8) {
          Text(name)
            .font(.system(size: 16, weight: .medium, design: .default))
            .foregroundColor(.color("2C406E"))

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
        }.foregroundColor(.color("2C406E"))
          .padding(.bottom, 23)
          .padding(.top, 6)
          .padding(.leading, 19)
      }
      HStack(spacing: 6) {
        Text("Urgent")
          .font(.system(size: 10, weight: .medium, design: .default))
          .foregroundColor(colorUrgent)
          .padding(.horizontal, 6)
          .padding(.vertical, 3)
          .background(colorBackground)
          .cornerRadius(3)
        // .frame(height: 20)
        Text("Home")
          .font(.system(size: 10, weight: .medium, design: .default))
          .foregroundColor(color)
          .padding(.horizontal, 6)
          .padding(.vertical, 3)
          .background(colorBackground)
          .cornerRadius(3)
      }.padding(.leading, 10)
    }.padding(15)
      .padding(.trailing, -5)
      .background(colorBack, in: Rectangle()).cornerRadius(15)
  }
}

struct Work: View {
  @State var returnProfile = false
  @State var showFilter = false
  var body: some View {
    ZStack {
      ScrollView {
        VStack(alignment: .leading, spacing: 0) {
          UpView(title: "Work", returnBackProfile: $returnProfile, showCalendar: $showFilter)

          VStack(spacing: 18) {
            CardPersonal(name: "Web UI Design", color: .color("37C5FF"), colorUrgent: .color("37C5FF"), time: "07:00 - 07:15", colorBackground: .color("D8F4FF"), colorBack: .color("F5FCFF"))
            CardPersonal(name: "Web UI Design", color: .color("37C5FF"), colorUrgent: .color("37C5FF"), time: "07:15 - 07:30", colorBackground: .color("D8F4FF"), colorBack: .color("F5FCFF"))
            CardPersonal(name: "Web UI Design", color: .color("37C5FF"), colorUrgent: .color("37C5FF"), time: "07:00 - 07:15", colorBackground: .color("D8F4FF"), colorBack: .color("F5FCFF"))
            CardPersonal(name: "Web UI Design", color: .color("37C5FF"), colorUrgent: .color("37C5FF"), time: "07:15 - 07:30", colorBackground: .color("D8F4FF"), colorBack: .color("F5FCFF"))
          }
          Spacer()
          HStack {
            Spacer()
            ZStack {
              Circle()
                .fill(LinearGradient(colors: [.color("5B67CA"), .color("A3A9D9")], startPoint: .topTrailing, endPoint: .bottomLeading))
                .frame(width: 50)
                .shadow(color: .color("F1F7FF"), radius: 13, x: -3, y: 7)

              // .background(in: Circle(), fillStyle: LinearGradient(colors: [.color("5B67CA"), .color("A3A9D9")], startPoint: .bottomLeading, endPoint: .topTrailing))
              Text("+")
                .font(.system(size: 24))
                .foregroundColor(.white)
            }

          }.ignoresSafeArea().padding(.top, 8)
        }

      }.padding(.horizontal, 24)
        .background(.white)
      if self.returnProfile {
        // Spacer()
        GeometryReader { _ in
          Profile1()
        } // .frame(maxWidth: .infinity)
        // .frame(alignment: .trailing)
        // .padding(.leading, 64)
        // .padding(.top, 126)
        .background {
          Color.black.opacity(0)
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
              // withAnimation {
              self.returnProfile.toggle()
              // }
            }
        }
      }
      if self.showFilter {
        // Spacer()
        GeometryReader { _ in
          Filter()
        } // .frame(maxWidth: .infinity)
        // .frame(alignment: .trailing)
        // .padding(.leading, 64)
        .padding(.top, 170)
        .background {
          Color.black.opacity(0.6)
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
              // withAnimation {
              self.showFilter.toggle()
              // }
            }
        }
      }
    }
  }
}

struct Work_Previews: PreviewProvider {
  static var previews: some View {
    Work()
  }
}

struct Private: View {
  @State var addPrivate = false
  @State var returnBack = false
  @State var returnProfile = false
  @State var showFilter = false
  var body: some View {
    ZStack {
      ScrollView {
        VStack(alignment: .leading, spacing: 0) {
          UpView(title: "Private", returnBackProfile: $returnBack, showCalendar: $showFilter)

          VStack(spacing: 18) {
            CardPersonal(name: "Web UI Design", color: .color("F0A58E"), colorUrgent: .color("F0A58E"), time: "07:00 - 07:15", colorBackground: .color("FFEAE3"), colorBack: .color("FDF5F5"))
            CardPersonal(name: "Web UI Design", color: .color("F0A58E"), colorUrgent: .color("F0A58E"), time: "07:15 - 07:30", colorBackground: .color("FFEAE3"), colorBack: .color("FDF5F5"))
            CardPersonal(name: "Web UI Design", color: .color("F0A58E"), colorUrgent: .color("F0A58E"), time: "07:00 - 07:15", colorBackground: .color("FFEAE3"), colorBack: .color("FDF5F5"))
            CardPersonal(name: "Web UI Design", color: .color("F0A58E"), colorUrgent: .color("F0A58E"), time: "07:15 - 07:30", colorBackground: .color("FFEAE3"), colorBack: .color("FDF5F5"))
          }
          Spacer()
          HStack {
            Spacer()
            Button {
              addPrivate.toggle()
            } label: {
              ZStack {
                Circle()
                  .fill(LinearGradient(colors: [.color("5B67CA"), .color("A3A9D9")], startPoint: .topTrailing, endPoint: .bottomLeading))
                  .frame(width: 50)
                  .shadow(color: .color("F1F7FF"), radius: 13, x: -3, y: 7)

                // .background(in: Circle(), fillStyle: LinearGradient(colors: [.color("5B67CA"), .color("A3A9D9")], startPoint: .bottomLeading, endPoint: .topTrailing))
                Text("+")
                  .font(.system(size: 24))
                  .foregroundColor(.white)
              }
            }
          }.ignoresSafeArea().padding(.top, 8)
        }

      }.padding(.horizontal, 24)
        .background(.white)
      if self.addPrivate {
        // Spacer()
        GeometryReader { _ in
          AddTask(tittle: "Add Private", hasType: false, returnBack: $returnBack)
        } // .frame(maxWidth: .infinity)
        // .frame(alignment: .trailing)
        // .padding(.leading, 64)
        // .padding(.top, 126)
        .background {
          Color.black.opacity(0.6)
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
              // withAnimation {
              self.addPrivate.toggle()
              // }
            }
        }
      }
      if self.returnBack {
        // Spacer()
        GeometryReader { _ in
          Private()
        } // .frame(maxWidth: .infinity)
        // .frame(alignment: .trailing)
        // .padding(.leading, 64)
        // .padding(.top, 126)
        .background {
          Color.black.opacity(0.6)
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
              // withAnimation {
              self.returnBack.toggle()
              // }
            }
        }
      }
      if self.returnProfile {
        // Spacer()
        GeometryReader { _ in
          Profile1()
        } // .frame(maxWidth: .infinity)
        // .frame(alignment: .trailing)
        // .padding(.leading, 64)
        // .padding(.top, 126)
        .background {
          Color.black.opacity(0)
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
              // withAnimation {
              self.returnProfile.toggle()
              // }
            }
        }
      }
      if self.showFilter {
        // Spacer()
        GeometryReader { _ in
          Filter()
        } // .frame(maxWidth: .infinity)
        // .frame(alignment: .trailing)
        // .padding(.leading, 64)
        .padding(.top, 170)
        .background {
          Color.black.opacity(0.6)
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
              // withAnimation {
              self.showFilter.toggle()
              // }
            }
        }
      }
    }
  }
}

struct Private_Previews: PreviewProvider {
  static var previews: some View {
    Private()
  }
}

struct Meeting: View {
  @State var returnProfile = false
  @State var showFilter = false
  var body: some View {
    ZStack {
      ScrollView {
        VStack(alignment: .leading, spacing: 0) {
          UpView(title: "Meeting", returnBackProfile: $returnProfile, showCalendar: $showFilter)

          VStack(spacing: 18) {
            CardPersonal(name: "Meeting", color: .color("39C8CB"), colorUrgent: .color("39C8CB"), time: "07:00 - 07:15", colorBackground: .color("DCF7F3"), colorBack: .color("F8FFFA"))
            CardPersonal(name: "Meeting", color: .color("39C8CB"), colorUrgent: .color("39C8CB"), time: "07:00 - 07:15", colorBackground: .color("DCF7F3"), colorBack: .color("F8FFFA"))
            CardPersonal(name: "Meeting", color: .color("39C8CB"), colorUrgent: .color("39C8CB"), time: "07:00 - 07:15", colorBackground: .color("DCF7F3"), colorBack: .color("F8FFFA"))
            CardPersonal(name: "Meeting", color: .color("39C8CB"), colorUrgent: .color("39C8CB"), time: "07:00 - 07:15", colorBackground: .color("DCF7F3"), colorBack: .color("F8FFFA"))
          }
          Spacer()
          HStack {
            Spacer()
            ZStack {
              Circle()
                .fill(LinearGradient(colors: [.color("5B67CA"), .color("A3A9D9")], startPoint: .topTrailing, endPoint: .bottomLeading))
                .frame(width: 50)
                .shadow(color: .color("F1F7FF"), radius: 13, x: -3, y: 7)

              // .background(in: Circle(), fillStyle: LinearGradient(colors: [.color("5B67CA"), .color("A3A9D9")], startPoint: .bottomLeading, endPoint: .topTrailing))
              Text("+")
                .font(.system(size: 24))
                .foregroundColor(.white)
            }

          }.ignoresSafeArea().padding(.top, 8)
        }

      }.padding(.horizontal, 24)
        .background(.white)
      if self.returnProfile {
        // Spacer()
        GeometryReader { _ in
          Profile1()
        } // .frame(maxWidth: .infinity)
        // .frame(alignment: .trailing)
        // .padding(.leading, 64)
        // .padding(.top, 126)
        .background {
          Color.black.opacity(0)
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
              // withAnimation {
              self.returnProfile.toggle()
              // }
            }
        }
      }
      if self.showFilter {
        // Spacer()
        GeometryReader { _ in
          Filter()
        } // .frame(maxWidth: .infinity)
        // .frame(alignment: .trailing)
        // .padding(.leading, 64)
        .padding(.top, 170)
        .background {
          Color.black.opacity(0.6)
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
              // withAnimation {
              self.showFilter.toggle()
              // }
            }
        }
      }
    }
  }
}

struct Meeting_Previews: PreviewProvider {
  static var previews: some View {
    Meeting()
  }
}

struct Event: View {
  @State var addEvent = false
  @State var returnBack = false
  @State var returnProfile = false
  var body: some View {
    ZStack {
      ZStack {
        ScrollView {
          VStack(spacing: 0) {
            HStack {
              Button {
                returnProfile.toggle()
              } label: {
                Image("Image 26")
                  .padding(.horizontal, 20.5)
                  .padding(.top, 18)
                  .padding(.bottom, 16)
                  .background(.white)
                  .cornerRadius(14)
                  .shadow(color: .color("F1F7FF"), radius: 13, x: -3, y: 7)
              }

              Spacer()
              Text("Events")
                .font(.system(size: 18, weight: .medium, design: .rounded))
                .padding(.trailing, 48)
              Spacer()
            }
            HStack {
              Text("Task")
                .font(.system(size: 24, weight: .medium, design: .default))
                .foregroundColor(.color("10275A"))
              Spacer()
              HStack(spacing: 6) {
                Image("Calendar")
                  .padding(.top, 2)
                Text("August 2021").font(.system(size: 12, weight: .medium, design: .default))
                  .foregroundColor(.color("525F77"))
              }

            }.padding(.top, 32)
              .padding(.bottom, 15)
            HStack(spacing: 0) {
              HStack {
                Day(day: "MO", date: "12")
                Spacer()
                Day(day: "TU", date: "13")
                Spacer()
                Day(day: "WE", date: "14")
                Spacer()
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
              Text("Events")
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundColor(.color("10275A"))
              Spacer()
            }.padding(.top, 24)
              .padding(.bottom, 20)
            VStack(spacing: 18) {
              CardPersonal(name: "Design Seminar", color: .color("8F81FE"), colorUrgent: .color("8F81FE"), time: "07:15 - 07:35", colorBackground: .color("ECEAFF"), colorBack: .color("F6F7FF"))
              CardPersonal(name: "Design Seminar", color: .color("8F81FE"), colorUrgent: .color("8F81FE"), time: "07:00 - 07:15", colorBackground: .color("ECEAFF"), colorBack: .color("F6F7FF"))
              CardPersonal(name: "Design Seminar", color: .color("8F81FE"), colorUrgent: .color("8F81FE"), time: "07:15 - 07:35", colorBackground: .color("ECEAFF"), colorBack: .color("F6F7FF"))
            }
            Spacer()
            HStack {
              Spacer()
              Button {
                addEvent.toggle()
              } label: {
                ZStack {
                  Circle()
                    .fill(LinearGradient(colors: [.color("5B67CA"), .color("A3A9D9")], startPoint: .topTrailing, endPoint: .bottomLeading))
                    .frame(width: 50)
                    .shadow(color: .color("F1F7FF"), radius: 13, x: -3, y: 7)

                  // .background(in: Circle(), fillStyle: LinearGradient(colors: [.color("5B67CA"), .color("A3A9D9")], startPoint: .bottomLeading, endPoint: .topTrailing))
                  Text("+")
                    .font(.system(size: 24))
                    .foregroundColor(.white)
                }
              }
            }.ignoresSafeArea().padding(.top, 41)
          }

        }.padding(.horizontal, 24)
          // .background(.white).safeAreaInset(edge: .bottom) {
          // TabDailoz(isSelectedHome: false, isSelectedTask: true, isSelectedGraphic: false, isSelectedProfile: false)}
          .background(.white)
      }
      if self.addEvent {
        // Spacer()
        GeometryReader { _ in
          AddTask(tittle: "Add Event", hasType: false, returnBack: $returnBack)
        } // .frame(maxWidth: .infinity)
        // .frame(alignment: .trailing)
        // .padding(.leading, 64)
        // .padding(.top, 126)
        .background {
          Color.black.opacity(0.6)
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
              // withAnimation {
              self.addEvent.toggle()
              // }
            }
        }
      }
      if self.returnBack {
        // Spacer()
        GeometryReader { _ in
          Event()
        } // .frame(maxWidth: .infinity)
        // .frame(alignment: .trailing)
        // .padding(.leading, 64)
        // .padding(.top, 126)
        .background {
          Color.black.opacity(0.6)
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
              // withAnimation {
              self.returnBack.toggle()
              // }
            }
        }
      }
      if self.returnProfile {
        // Spacer()
        GeometryReader { _ in
          Profile1()
        } // .frame(maxWidth: .infinity)
        // .frame(alignment: .trailing)
        // .padding(.leading, 64)
        // .padding(.top, 126)
        .background {
          Color.black.opacity(0)
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
              // withAnimation {
              self.returnProfile.toggle()
              // }
            }
        }
      }
    }
  }
}

struct Event_Previews: PreviewProvider {
  static var previews: some View {
    Event()
  }
}
