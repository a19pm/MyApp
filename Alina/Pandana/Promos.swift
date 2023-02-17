//
//  Promos.swift
//  Alina
//
//  Created by Dmitry on 24/01/2023.
//

import SwiftUI

struct PromoScreen: View {
  @State var isSelected: Bool = false
  var body: some View {
    ScrollView {
      VStack(alignment: .leading, spacing: 0) {
        ZStack(alignment: .topLeading) {
          ZStack(alignment: .topTrailing) {
            ZStack {
              Rectangle().frame(height: 117).cornerRadius(8).foregroundColor(.color("CC2525"))
                .shadow(color: .color("000000").opacity(0.06), radius: 50, x: 0, y: 32)
              Image("i 80")
            }
            Image("i 81").offset(x: -68.03, y: -33.65)
            //            .padding(.trailing, 68.03).padding(.bottom, 33.65)
            Image("i 82").offset(x: 12, y: 27)
          }
          VStack(alignment: .leading) {
            Text("Discount 25% Just order \n3 ticket Now!")
              .font(.system(size: 14, weight: .semibold, design: .default))
              .foregroundColor(.color("FFFFFFF"))
              .lineSpacing(6)
            Spacer()
            Text("Order Now")
              .font(.system(size: 12, weight: .semibold, design: .default))
              .foregroundColor(.color("CC2525"))
              .frame(width: 117, height: 32)
              .background(.white)
              .cornerRadius(24)
          }.padding(.leading, 20).padding(.top, 14).padding(.bottom, 15)
        }
        ZStack(alignment: .topLeading) {
          ZStack(alignment: .topTrailing) {
            ZStack {
              Rectangle().frame(height: 117).cornerRadius(8).foregroundColor(.color("F4A818"))
                .shadow(color: .color("000000").opacity(0.06), radius: 50, x: 0, y: 32)
              Image("i 84").resizable()
            }
            Image("i 85").offset(x: -93, y: 70)
            //            .padding(.trailing, 68.03).padding(.bottom, 33.65)
            Image("i 90").offset(x: 8, y: 15)
          }
          VStack(alignment: .leading) {
            Text("Discount 25% Just order \n3 movie Now!")
              .font(.system(size: 14, weight: .semibold, design: .default))
              .foregroundColor(.color("FFFFFFF"))
              .lineSpacing(6)
            Spacer()
            Text("Order Now")
              .font(.system(size: 12, weight: .semibold, design: .default))
              .foregroundColor(.color("F4A818"))
              .frame(width: 117, height: 32)
              .background(.white)
              .cornerRadius(24)
          } // .frame(height: 117)
          .padding(.leading, 20)
          .padding(.top, 40)
          .padding(.bottom, 42)
        }
        ZStack(alignment: .topLeading) {
          ZStack(alignment: .topTrailing) {
            ZStack {
              Image("i 89")
                .resizable()
                .scaledToFill()
                .frame(height: 117)
                .background(.color("252422"))
                .cornerRadius(8)
                .shadow(color: .color("000000").opacity(0.06), radius: 50, x: 0, y: 32)
            }
            Image("i 88").offset(x: -22, y: 37)
            //            .padding(.trailing, 68.03).padding(.bottom, 33.65)
          }
          VStack(alignment: .leading) {
            Text("Discount 25% Just order \n3 ticket Now!")
              .font(.system(size: 14, weight: .semibold, design: .default))
              .foregroundColor(.color("FFFFFFF"))
              .lineSpacing(6)

          }.padding(.leading, 20).padding(.top, 14).padding(.bottom, 15)
        }

        Rectangle().frame(height: 2).foregroundColor(.color("DEE2EE")).padding(.top, 25.5)

        Text("*The end of list :)")
          .font(.system(size: 16, weight: .regular, design: .default))
          .foregroundColor(.color("35405A").opacity(0.34))
          .frame(maxWidth: .infinity)
          .multilineTextAlignment(.center)
          .tracking(1.1)
          .padding(.top, 24.5)

      }.padding(.horizontal, 24).padding(.top, 24)
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
          }
          HStack(spacing: 22) {
            N(notifivation: "Update", isSelected: $isSelected)
            N(notifivation: "Message", isSelected: $isSelected)
            N(notifivation: "Promo", isSelected: $isSelected)
          }.padding(.vertical, 7).padding(.leading, 24).padding(.trailing, 7)
            .background(.white, in: RoundedRectangle(cornerRadius: 6)) // .cornerRadius(6)
            .shadow(color: .color("35405A").opacity(0.3), radius: 24, x: 0, y: 22)
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

struct Promos_Previews: PreviewProvider {
  static var previews: some View {
    PromoScreen()
  }
}
