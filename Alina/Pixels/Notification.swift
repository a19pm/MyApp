//
//  Notification.swift
//  Alina
//
//  Created by Dmitry on 21/12/2022.
//

import SwiftUI

struct Notification: View {
  var body: some View {
    ZStack {
      ScrollView {
        VStack(alignment: .trailing, spacing: 0) {
          HStack(spacing: 3) {
            Text("Notification")
              .font(.system(size: 23, weight: .medium, design: .rounded))
              .foregroundColor(.black)
            Spacer()
            Circle().frame(width: 6, height: 6)
            Circle().frame(width: 6, height: 6)
            Circle().frame(width: 6, height: 6)
          }
          HStack(alignment: .firstTextBaseline) {
            Text("ARTICLE FOR YOU").font(.system(size: 15, weight: .medium, design: .rounded))
              .foregroundColor(.color("A7A7A7"))
            Spacer()
            Text("SEE ALL").font(.system(size: 13, weight: .medium, design: .rounded))
              .foregroundColor(.color("000000"))
          }.padding(.top, 37.83).padding(.bottom, 24)
          VStack(spacing: 26) {
            NewsCard(text: "tips for taking photos to look professional", time: "5 mins", area: "tips & trick", newsImage: "Image 6")

            NewsCard(text: "amazing nighttime photos, maybe we can try it", time: "12 mins", area: "fotograph", newsImage: "Image 7")

            NewsCard(text: "The story of the street cat, spare your wipes", time: "27 mins", area: "Life", newsImage: "Image 8")
          }
          HStack(alignment: .firstTextBaseline) {
            Text("TODAY").font(.system(size: 15, weight: .medium, design: .rounded))
              .foregroundColor(.color("A7A7A7"))
            Spacer()
            Text("SEE ALL").font(.system(size: 13, weight: .medium, design: .rounded))
              .foregroundColor(.color("000000"))
          }.padding(.top, 34).padding(.bottom, 29)
          VStack(spacing: 23) {
            NewsBlock(image: "Image 14", color: .color("ED1C2E"), title: "CNN Posts new news", place: "from subscribe")

            NewsBlock(image: "Image 12", color: .color("3455AB"), title: "football news", place: "from tag")

            NewsBlock(image: "Image 13", color: .color("2D2D2D"), title: "More about apple", place: "from tag")
          }

        }.padding(.top, 16.83).padding(.leading, 27).padding(.trailing, 37)
      }
    }.background(.white).safeAreaInset(edge: .bottom) {
      TabBarPixels3()
    }
  }
}

struct Notificaation_Previews: PreviewProvider {
  static var previews: some View {
    Notification()
  }
}

struct NewsBlock: View {
  var image: String
  var color: Color
  var title: String
  var place: String
  var body: some View {
    HStack(spacing: 22) {
      VStack {
        Image(image).frame(width: 60, height: 60, alignment: .center)
          .background(color, in: Rectangle())
          .cornerRadius(12)
      }
      VStack(alignment: .leading, spacing: 5) {
        Text(title).font(.system(size: 16, weight: .medium, design: .rounded))
          .foregroundColor(.color("000000")).tracking(0.5)
        Text(place).font(.system(size: 15, weight: .medium, design: .rounded))
          .foregroundColor(.color("898989")).tracking(0.5)
      }
      Spacer()
      VStack(spacing: 2.5) {
        Circle().frame(width: 5, height: 5).foregroundColor(.color("C0C0C0"))
        Circle().frame(width: 5, height: 5).foregroundColor(.color("C0C0C0"))
        Circle().frame(width: 5, height: 5).foregroundColor(.color("C0C0C0"))
      }
    }
  }
}

struct CNN: View {
  var body: some View {
    VStack {
      Image("Image 14").frame(width: 60, height: 60, alignment: .center)
        .background(.color("ED1C2E"), in: Rectangle())
        .cornerRadius(12)
    }
  }
}

struct FIFA: View {
  var body: some View {
    VStack {
      Image("Image 12").frame(width: 60, height: 60, alignment: .center)
        .background(.color("3455AB"), in: Rectangle())
        .cornerRadius(12)
    }
  }
}

struct Apple: View {
  var body: some View {
    VStack {
      Image("Image 13").frame(width: 60, height: 60, alignment: .center)
        .background(.color("2D2D2D"), in: Rectangle())
        .cornerRadius(12)
    }
  }
}

struct SummaryStats: View {
  var body: some View {
    ZStack {
      ScrollView {
        VStack(alignment: .leading, spacing: 0) {
          HStack(spacing: 3) {
            Text("Summary Stats")
              .font(.system(size: 23, weight: .medium, design: .rounded))
              .foregroundColor(.black)
            Spacer()
            Circle().frame(width: 6, height: 6)
            Circle().frame(width: 6, height: 6)
            Circle().frame(width: 6, height: 6)
          }
          HStack(alignment: .firstTextBaseline) {
            Text("YOUR STATS").font(.system(size: 15, weight: .medium, design: .rounded))
              .foregroundColor(.color("A7A7A7"))
            Spacer()
          }.padding(.top, 37.83).padding(.bottom, 24)
          VStack(alignment: .leading, spacing: 43) {
            Text("Today Daily").font(.system(size: 17, weight: .medium, design: .rounded))
              .foregroundColor(.black)
              .padding(.leading, 15)
            HStack(spacing: 0) {
              VStack(alignment: .leading) {
                Text("15").font(.system(size: 35, weight: .medium, design: .rounded))
                  .foregroundColor(.black)
                Text("Read").font(.system(size: 17, weight: .medium, design: .rounded))
                  .foregroundColor(.color("A1A1A1"))
              }
              Spacer()
              VStack {
                Text("5").font(.system(size: 35, weight: .medium, design: .rounded))
                  .foregroundColor(.black)
                Text("Favourite").font(.system(size: 17, weight: .medium, design: .rounded))
                  .foregroundColor(.color("A1A1A1"))
              }
              Spacer()
              VStack {
                Text("23").font(.system(size: 35, weight: .medium, design: .rounded))
                  .foregroundColor(.black)
                Text("Saved").font(.system(size: 17, weight: .medium, design: .rounded))
                  .foregroundColor(.color("A1A1A1"))
              }
            }.padding(.leading, 45).padding(.trailing, 43)

          }.padding(.top, 21).padding(.bottom, 30)
            .background(RoundedRectangle(cornerRadius: 12).fill(.white))
            .overlay(RoundedRectangle(cornerRadius: 12).stroke(.color("D3D3D3"), lineWidth: 1))

          Text("FAVOURITE TOPIC").font(.system(size: 15, weight: .medium, design: .rounded))
            .foregroundColor(.color("A7A7A7"))
            .padding(.top, 30).padding(.bottom, 24)
          VStack(spacing: 25) {
            TOPIC(icon: "T", color: .color("FFB703"), title: "Technology", follow: true)
            TOPIC(icon: "S", color: .color("C44536"), title: "Sport", follow: false)
            TOPIC(icon: "L", color: .color("118AB2"), title: "Life & Style", follow: false)
          }
        }.padding(.top, 16.83).padding(.leading, 27).padding(.trailing, 37)
      }
    }.background(.white).safeAreaInset(edge: .bottom) {
      TabBarPixels4()
    }
  }
}

struct Summery_Previews: PreviewProvider {
  static var previews: some View {
    SummaryStats()
  }
}

struct TOPIC: View {
  var icon: String
  var color: Color
  var title: String
  var follow: Bool
  var body: some View {
    HStack {
      HStack(spacing: 19) {
        Text(icon)
          .font(.system(size: 25, weight: .medium, design: .rounded))
          .foregroundColor(.white)
          .padding(10)
          .frame(width: 50, height: 50)
          .background(color, in: Circle())
        Text(title).font(.system(size: 18, weight: .medium, design: .rounded))
          .foregroundColor(.black)
        Spacer()
        if follow {
          Text("Unfollow").font(.system(size: 15, weight: .medium, design: .rounded))
            .foregroundColor(.color("0077B6")).frame(width: 92, height: 44).background(RoundedRectangle(cornerRadius: 4).fill(.white))
            .overlay(RoundedRectangle(cornerRadius: 4).stroke(.color("D3D3D3"), lineWidth: 1))
        } else {
          Text("Follow").font(.system(size: 15, weight: .medium, design: .rounded))
            .foregroundColor(.white).frame(width: 77, height: 44).background(RoundedRectangle(cornerRadius: 4).fill(.color("0077B6")))
        }
      }
    }
  }
}
