//
//  Well Done!.swift
//  Alina
//
//  Created by Dmitry on 15/12/2022.
//

import SwiftUI

struct WellDone: View {
  var body: some View {
    ScrollView {
      VStack(alignment: .leading) {
        HStack {
          Image(systemName: "chevron.backward")
            .font(.system(size: 25, weight: .bold, design: .default))
            .foregroundColor(Color.gray)
          Spacer()
        }.padding()
        HStack {
          Image("welldone")
          Text("Well Done !").font(.system(size: 42, weight: .semibold, design: .default))
            .foregroundColor(.color("546CF1"))
        }
        Text("You saved $ 200 in this week. Keep it up.").font(.system(size: 32, weight: .light, design: .default))
          .foregroundColor(.color("546CF1"))
      }.padding()
      HStack {
        VStack(alignment: .leading) {
          Text("Budget \nin this Month").font(.system(size: 28, weight: .light, design: .default))
            .foregroundColor(.white).padding(.top)
          Text("16 days left to complete").font(.system(size: 16, weight: .light, design: .default))
            .foregroundColor(.white).padding(.top)
        }
        Spacer()
        ProgressBar(progress: 0.9)

      }.padding().background(RoundedRectangle(cornerRadius: 16)).foregroundColor(.color("546CF1")).padding(.horizontal, 15).padding(.bottom, 20)

      BudgetView(isExceed: true, icon: "f", name: "Food & Beverage", currency: "$", balance: "1456", pense: "45")
      BudgetView(isExceed: false, icon: "Clothing", name: "Clothing", currency: "$", balance: "567", pense: "45")
      BudgetView(isExceed: false, icon: "TravelGray", name: "Travel", currency: "$", balance: "345", pense: "56")

    }.background(.color("F5F5F5"))
  }
}

struct WellDone_Previews: PreviewProvider {
  static var previews: some View {
    WellDone()
  }
}

struct ProgressBar: View {
  var progress: Float

  var body: some View {
    ZStack {
      Circle()
        .stroke(lineWidth: 10.0)
        .opacity(1)
        .foregroundColor(.color("2B47E6"))
      Circle()
        .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
        .stroke(style: StrokeStyle(lineWidth: 10.0, lineCap: .round, lineJoin: .round))
//                .fill(AngularGradient(colors: [.color("00B78E"), .color("0AFFC8") ], center: .center))
        .fill(LinearGradient(colors: [.color("00B78E"), .color("0AFFC8")], startPoint: .leading, endPoint: .trailing))
        .rotationEffect(Angle(degrees: 270.0))
      Text(String(format: "%.0f %%", min(self.progress, 1.0) * 100.0))
        .font(.system(size: 28, weight: .light, design: .default))
        .foregroundColor(.color("2B47E6"))
    }.frame(width: 124, height: 124)
  }
}

struct BudgetView: View {
  var isExceed: Bool
  var icon: String
  var name: String
  var currency: String
  var balance: String
  var pense: String
  var body: some View {
    VStack {
      HStack {
        Image(icon).foregroundColor(.color("746A96"))
        Text(name).foregroundColor(.color("746A96")).font(.system(size: 28, weight: .light, design: .default))
        Spacer()
      }.padding(.bottom, 20)
      if isExceed {
        HStack {
          Image("Exceed")
          Text("Exceed $ 45").foregroundColor(.color("FF7070")).font(.system(size: 16, weight: .light, design: .default))
          Spacer()
        }
      } else {
        HStack {
          Text("You have left\(currency)\(balance) ").foregroundColor(.color("746A96")).font(.system(size: 16, weight: .light, design: .default))
          Spacer()
        }
      }
      HStack {
        Text("Monthly average").foregroundColor(.color("746A96")).font(.system(size: 16, weight: .light, design: .default))
        Spacer()
        Text(currency).padding(.bottom, -10).foregroundColor(.color("746A96"))
        Text(balance).font(.system(size: 30, weight: .light, design: .default)).foregroundColor(.color("746A96"))
        Text(pense).padding(.bottom, 10).foregroundColor(.color("746A96"))
      }.padding(.top, -15)
    }.padding().background(RoundedRectangle(cornerRadius: 16).foregroundColor(.white).shadow(radius: 1))
      // .overlay(RoundedRectangle(cornerRadius: 19))
      .frame(height: 142)
      .padding(.horizontal, 15)
      .padding(.bottom, 20)
  }
}
