//
//  Trailer Screen.swift
//  Alina
//
//  Created by Dmitry on 20/01/2023.
//

import SwiftUI

struct TrailerScreen: View {
  var body: some View {
    VStack(){
      HStack{
        Image("i 34")
        Spacer()
        Image("i 35")
      }.padding(.bottom, 192)
      Image("i 36")
      Spacer()
      Image("i 37")
    }.padding(.top, 19)
      .padding(.leading, 26)
      .padding(.trailing, 25)
      .background(.black)
    
  }
}

struct TrailerScreen_Previews: PreviewProvider {
  static var previews: some View {
    TrailerScreen()
  }
}
