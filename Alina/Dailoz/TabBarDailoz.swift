//
//  TabBarDailoz.swift
//  Alina
//
//  Created by Dmitry on 27/12/2022.
//


import SwiftUI
struct TabDailoz: View {
  var isSelectedHome: Bool
  var isSelectedTask: Bool
  var isSelectedGraphic: Bool
  var isSelectedProfile: Bool
  
  var body: some View {
    ZStack {
        HStack(){
          if isSelectedHome{
            VStack(){
              Image("1").frame(height: 20).scaledToFill()
                Spacer()
                Rectangle().frame(width: 4, height: 4).foregroundColor(.color("5B67CA"))
                  
              
            }.frame(height: 31).padding(.top,13)
              
          } else {
            Image("Image 13")
          }
         
            
          Spacer()
          if isSelectedTask{
            VStack(){
              Image("Image 14").frame(height: 20).scaledToFill()
                Spacer()
                Rectangle().frame(width: 4, height: 4).foregroundColor(.color("5B67CA"))
                  
              
            }.frame(height: 31).padding(.top,13)
          } else{
            Image("2")
          }
            
          
          Spacer()
          ZStack {
            Color.white.frame(width: 14, height: 2)
            Color.white.frame(width: 2, height: 14)
          }.frame(width: 50, height: 50)
            .background(.color("5B67CA"), in: Circle())
          Spacer()
          if isSelectedGraphic {
            VStack(){
              Image("Activity").frame(height: 20).scaledToFill()
                Spacer()
                Rectangle().frame(width: 4, height: 4).foregroundColor(.color("5B67CA"))
                  
              
            }.frame(height: 31).padding(.top,13)
          } else{
            Image("3")
          }
                              
          Spacer()
          if isSelectedProfile{
            VStack(){
              Image("Image 15").frame(height: 20).scaledToFill()
                Spacer()
                Rectangle().frame(width: 4, height: 4).foregroundColor(.color("5B67CA"))
                  
              
            }.frame(height: 31).padding(.top,13)
          } else{
            Image("4")
          }
        }.padding(.vertical, 12).padding(.horizontal,20)
            
    }.frame(width: 316).background(.color("FFFFFF"), in: Rectangle()).cornerRadius(14).shadow(color: .color("F1F7FF"), radius: 13, x: -3, y: 7)
  }
}

struct TabBArDailoz_Previews: PreviewProvider {
  static var previews: some View {
    TabDailoz(isSelectedHome: true, isSelectedTask: true, isSelectedGraphic: true, isSelectedProfile: true)
  }
}
