//
//  BlockScreen.swift
//  Alina
//
//  Created by Dmitry on 15/12/2022.
//

import SwiftUI

struct BlockScreenView: View {
  var body: some View {
    ZStack {
      VStack {
        Image("Wallpaper").resizable()
      }

      VStack(alignment: .center) {
        Image(systemName: "lock.fill").resizable().frame(width: 23.92, height: 34.65, alignment: .center).padding(.top, 15.59).foregroundColor(.white)
        Text("9:41").font(.system(size: 70, weight: .thin, design: .default)).foregroundColor(.white).padding(.top, -7)
        Text("Monday, June 22").font(.system(size: 20, weight: .regular, design: .default)).foregroundColor(.white).padding(.top, -40).padding(.bottom, -10)
        ZStack {
          HStack {
            Image("App Icon").frame(width: 40, height: 40)
            VStack(alignment: .leading) {
              HStack {
                Text("Title").bold()
                Spacer()
                Text("now").font(.footnote).colorMultiply(.secondary)
              }
              Text("Description")
            }
          }.padding(.horizontal, 10).padding(.vertical, 10)
        }.background(.regularMaterial, in: RoundedRectangle(cornerRadius: 19))
          .padding(.horizontal, 8)
        ZStack {
          HStack {
            Image("App Icon").frame(width: 40, height: 40)
            VStack(alignment: .leading) {
              HStack {
                Text("Title").bold()
                Spacer()
                Text("now").font(.footnote).colorMultiply(.secondary)
              }
              Text("Description")
            }
          }.padding(.horizontal, 10).padding(.vertical, 10)
        }.background(.regularMaterial, in: RoundedRectangle(cornerRadius: 19))
          .padding(.horizontal, 8)
        Spacer()
      }
      Spacer()
      HStack {
        ZStack {
          Circle().foregroundColor(.black.opacity(0.1)).frame(width: 52, height: 52)
          Image(systemName: "flashlight.off.fill").resizable().frame(width: 10, height: 27).foregroundColor(.white)
        }
        Spacer()
        ZStack {
          Circle().foregroundColor(.black.opacity(0.1)).frame(width: 52, height: 52)
          Image(systemName: "camera.fill").resizable().frame(width: 23, height: 17).foregroundColor(.white)
        }.padding(.horizontal, 47.84)
      }
      .padding(.top, 600.09).padding(.leading, 47.84)
    }
  }
}

struct BlockScreen_Previews: PreviewProvider {
  static var previews: some View {
    BlockScreenView()
  }
}
