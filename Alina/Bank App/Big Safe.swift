//
//  Big Safe.swift
//  Alina
//
//  Created by Dmitry on 15/12/2022.
//

import SwiftUI

struct BigSave: View {
  var body: some View {
    ZStack(alignment: .bottomTrailing) {
      ScrollView {
        VStack(alignment: .leading) {
          VStack {
            HStack {
              Image(systemName: "chevron.backward")
                .font(.system(size: 25, weight: .bold, design: .default))
                .foregroundColor(Color.white)
              Spacer()
            }.padding()
            HStack {
              Image("Sparkle").padding(.horizontal, 25)

              Text("Big Save !")
                .font(.system(size: 48, weight: .light, design: .default))
                .foregroundColor(.white)
                .padding(.horizontal, -25)
              Spacer()
            }
            HStack {
              Text("You can save $ 42 by \npaying with Bankly ")
                .font(.system(size: 32, weight: .light, design: .default))
                .foregroundColor(.white).padding(.horizontal, 25).padding(.bottom, 50)
              Spacer()
            }

          }.background(.color("1CE1AC"), in: Rectangle())
            .cornerRadius(20, corners: [.bottomLeft, .bottomRight])
            .padding(.bottom, 15)

          VStack(alignment: .leading) {
            Text("Available Credit Cards")
              .font(.system(size: 24, weight: .light, design: .default))
              .foregroundColor(.color("8175A3"))
              .tracking(-1.2)
          }.padding(.horizontal, 10)
            .padding(.vertical, 15)
            .padding(.bottom, 10)
          Spacer()
          CardView(bank: "Redblue", paymentProcessor: "Mastercard", name: "Jenny Barnes", cardNumber: "5868", currency: "$", balance: "2,345", pense: "34")

          CardView(bank: "Citybank", paymentProcessor: "Visa", name: "Jenny Barnes", cardNumber: "4327", currency: "$", balance: "257", pense: "12")

          CardView(bank: "Capital", paymentProcessor: "", name: "", cardNumber: "", currency: "", balance: "", pense: "")
        }

      }.background(.color("F5F5F5"))
      HStack {
        Spacer()
        HStack {
          Text("Continue")
            .font(.system(size: 24, weight: .light, design: .default))
            .foregroundColor(.white)
            .padding()
          Image(systemName: "chevron.right")
            .foregroundColor(.white)
            .padding()
        }.background(.color("1CE1AC"), in: Rectangle())
          .cornerRadius(38.5, corners: .topLeft)
      }
    }
  }
}

struct BigSave_Previews: PreviewProvider {
  static var previews: some View {
    BigSave()
  }
}

struct CardView: View {
  // var isSelected: Bool
  var bank: String
  var paymentProcessor: String
  var name: String
  var cardNumber: String
  var currency: String
  var balance: String
  var pense: String
  @State var isSelected = false
  var body: some View {
    Button {
      isSelected.toggle()
    } label: {
      VStack {
        HStack {
          Image(bank)
          Spacer()
          Image(paymentProcessor)
        }
        Spacer()
        if isSelected {
          HStack {
            Text("Selected").foregroundColor(.color("1CE1AC"))
            Spacer()
          }
        }
        HStack {
          Text("\(name)\n ...\(cardNumber)").foregroundColor(.color("746A96"))
          Spacer()
          Text(currency).padding(.bottom, -10).foregroundColor(.color("746A96"))
          Text(balance).font(.system(size: 30, weight: .light, design: .default)).foregroundColor(.color("746A96"))
          Text(pense).padding(.bottom, 10).foregroundColor(.color("746A96"))
        }
      }.padding()
        .background(RoundedRectangle(cornerRadius: 19)
          .fill(.white)
          .shadow(color: .color("d3d3d3").opacity(0.5), radius: 14, x: 0, y: 6))
        .overlay(RoundedRectangle(cornerRadius: 19)
          .stroke(.color("1CE1AC"), lineWidth: isSelected ? 2 : 0))
        .frame(height: 160)
        .padding(.horizontal, 15)
        .padding(.bottom, 20)
    }
  }
}
