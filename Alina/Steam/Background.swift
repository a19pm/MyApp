//
//  Background.swift
//  Alina
//
//  Created by Dmitry on 15/12/2022.
//

import SwiftUI

struct Background: View {
  var body: some View {
    VStack {
      ZStack(alignment: .top) {
        ScrollView {
          ZStack {
            VStack(alignment: .leading) {
              Image("Group")
                .resizable()
                .frame(height: 167)
                .padding(.top, 131)
            }
          }
        }
        Rectangle()
          .fill(LinearGradient(stops: [
            .init(color: Color.color("1C202C"), location: 0),
            .init(color: Color.color("1C202C"), location: 0.59),
            .init(color: .clear, location: 1),
          ], startPoint: .top, endPoint: .bottom))
          .frame(height: 222)
      } // .background(.color("1C202C"))
      Spacer()
    }.safeAreaInset(edge: .bottom) {
      TabBar()
    }
  }
}

struct Background_Previews: PreviewProvider {
  static var previews: some View {
    Background()
  }
}

struct BackgroundTwo: View {
  var body: some View {
    VStack {
      Spacer()
    }.safeAreaInset(edge: .bottom) {
      TabBar2()
    }
  }
}

struct My: PreviewProvider {
  static var previews: some View {
    BackgroundTwo()
  }
}

struct BBackgroundThreee: View {
  var body: some View {
    VStack {
      Spacer()
    }.safeAreaInset(edge: .bottom) {
      TabBar3()
    }
  }
}

struct BBackgroundFour: View {
  var body: some View {
    VStack {
      Spacer()
    }.safeAreaInset(edge: .bottom) {
      TabBar4()
    }
  }
}
