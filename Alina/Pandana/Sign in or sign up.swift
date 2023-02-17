//
//  Sign in or sign up.swift
//  Alina
//
//  Created by Dmitry on 18/01/2023.
//

import SwiftUI

struct SignIn: View {
  var body: some View {
    ZStack(alignment: .top) {
      VStack {
        ZStack {
          Image("i 10")
            .frame(height: 358)
            .scaledToFill()
          Rectangle()
            .fill(LinearGradient(colors: [.color("FFFFFF").opacity(0), .color("FFFFFF").opacity(1)], startPoint: .init(x: 0, y: -0.6), endPoint: .bottom))
            .frame(height: 402)
        }

        Spacer()
      }.overlay(alignment: .top) {
        Color.white.frame(height: 44)
      }.ignoresSafeArea()

      VStack(spacing: 0) {
        HStack {
          Spacer()
          Text("As Guest")
            .font(.system(size: 16, weight: .regular, design: .default))
            .padding(.horizontal, 25)
            .padding(.trailing, 6)
            .padding(.vertical, 9.5)
            .background(.white)
            .cornerRadius(22.5)
            .shadow(color: .color("35405A").opacity(0.3), radius: 28, x: 0, y: 12)
            .overlay(RoundedRectangle(cornerRadius: 22.5).stroke(.color("DEE2EE"), lineWidth: 1))
            .padding(.trailing, -9)
        }
        HStack {
          Image("i 11")
          Group {
            Text("PR").foregroundColor(.color("1C2238")) +
              Text("A").foregroundColor(.color("3544C4")) +
              Text("NDANA").foregroundColor(.color("1C2238"))
          }.font(.system(size: 18, weight: .heavy, design: .default)).tracking(0.5)
        }.padding(.top, 284)
        Text("By creating an account you get access to an unlimited number of exercises")
          .font(.system(size: 16, weight: .bold, design: .default))
          .foregroundColor(.color("1C2238")).opacity(0.36)
          .multilineTextAlignment(.center)
          .lineSpacing(6)
          .padding(.top, 24)
        Text("Sing in")
          .font(.system(size: 16, weight: .semibold, design: .default))
          .foregroundColor(.white)
          .padding(.vertical, 18)
          .frame(maxWidth: .infinity)
          .background(.color("C70C3C"))
          .cornerRadius(27.5)
          .overlay(RoundedRectangle(cornerRadius: 27.5).stroke(.color("E1E5F0"), lineWidth: 1))
          .padding(.top, 25)
          .padding(.bottom, 20)
        Text("Sing up")
          .font(.system(size: 16, weight: .semibold, design: .default))
          .foregroundColor(.color("3544C4"))
          .padding(.vertical, 18)
          .frame(maxWidth: .infinity)
          .background(.color("F5F6F7"))
          .cornerRadius(27.5)
          .overlay(RoundedRectangle(cornerRadius: 27.5).stroke(.color("E1E5F0"), lineWidth: 1))
        Rectangle()
          .frame(height: 1)
          .foregroundColor(.color("D8D8D8"))
          .padding(.top, 28)
          .padding(.bottom, 34)
        Text("Sign in with Facebook")
          .font(.system(size: 16, weight: .semibold, design: .default))
          .foregroundColor(.white)
          .padding(.vertical, 18)
          .frame(maxWidth: .infinity)
          .background(.color("3A559F"))
          .cornerRadius(27.5)
          .overlay(RoundedRectangle(cornerRadius: 27.5).stroke(.color("E1E5F0"), lineWidth: 1))

      }.padding(.top, 23).padding(.horizontal, 29)
      Spacer()
    }
  }
}

struct SignIn_Previews: PreviewProvider {
  static var previews: some View {
    SignIn()
  }
}

struct FancyTextView: View {
  let label: String

  var splicedLabel: [String] {
    return label.split(separator: " ").map(String.init)
  }

  var body: some View {
    HStack {
      ForEach(0 ..< splicedLabel.count, id: \.self) { index in
        Text(self.splicedLabel[index])
          .fontWeight(index.isMultiple(of: 2) ? .bold : .regular)
          .foregroundColor(index.isMultiple(of: 2) ? .blue : .red)
      }
    }
  }
}

struct OpeningScreen: View {
  var body: some View {
    ZStack {
      ZStack {
        Image("i 12")
//          .resizable()
//          .frame(width: 1190)

        // Rectangle()
        // .fill(LinearGradient(colors: [.color("FFFFFF").opacity(0), .color("FFFFFF").opacity(1)], startPoint: .init(x: 0, y: -0.6), endPoint: .bottom))
        // .frame(height: 402)
        Image("i 13")
          .padding(.vertical, 20.2)
          .padding(.horizontal, 18)
          .background(.white)
      }
    }
  }
}
