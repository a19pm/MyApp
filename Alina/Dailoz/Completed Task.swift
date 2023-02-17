//
//  Completed Task.swift
//  Alina
//
//  Created by Dmitry on 11/01/2023.
//

import SwiftUI

struct Completed: View {
  @State var show = false
  @State var returnBack = false
  @State var showCalendar = false
  var body: some View {
    ZStack{
      ScrollView{
        VStack(alignment: .leading, spacing: 0){
        UpView(title: "Completed Task", returnBackProfile: $returnBack, showCalendar: $showCalendar)
          HStack(spacing: 17){
            Image("Image 31")
            Text("May 2021")
              .font(.system(size: 20, weight: .medium, design: .rounded))
          }.padding(.bottom, 25)
          
          Text("14 May 2021")
            .font(.system(size: 14, weight: .medium, design: .rounded))
            .foregroundColor(.color("525F77"))
            .padding(.bottom, 22)
            .padding(.leading, -8)
          ScrollView(.horizontal){
            HStack{
              Button(action: {
                withAnimation{
                  show.toggle()
                }
              }, label: {
                CardCompleted(name: "Cleaning Clothes", color: .color("46C7FE"), colorUrgent: .color("F57C96"), time: "07:00 - 07:15", colorBackground: .color("FFE9ED"))
              })
              CardCompleted(name: "Cleaning Clothes", color: .color("46C7FE"), colorUrgent: .color("F57C96"), time: "07:00 - 07:15", colorBackground: .color("FFE9ED"))
            }
          }.padding(.trailing, -24)
            .padding(.bottom, 25)
          
          Text("15 May 2021")
            .font(.system(size: 14, weight: .medium, design: .rounded))
            .foregroundColor(.color("525F77"))
            .padding(.bottom, 22)
            .padding(.leading, -8)

          ScrollView(.horizontal){
            HStack{
              CardCompleted(name: "Cleaning Clothes", color: .color("46C7FE"), colorUrgent: .color("F57C96"), time: "07:00 - 07:15", colorBackground: .color("FFE9ED"))
              CardCompleted(name: "Cleaning Clothes", color: .color("46C7FE"), colorUrgent: .color("F57C96"), time: "07:00 - 07:15", colorBackground: .color("FFE9ED"))
            }
          }.padding(.trailing, -24)
            .padding(.bottom, 25)
          Text("16 May 2021")
            .padding(.bottom, 22)
            .font(.system(size: 14, weight: .medium, design: .rounded))
            .foregroundColor(.color("525F77"))
            .padding(.leading, -8)
          ScrollView(.horizontal){
            HStack{
              CardCompleted(name: "Cleaning Clothes", color: .color("46C7FE"), colorUrgent: .color("F57C96"), time: "07:00 - 07:15", colorBackground: .color("FFE9ED"))
              CardCompleted(name: "Cleaning Clothes", color: .color("46C7FE"), colorUrgent: .color("F57C96"), time: "07:00 - 07:15", colorBackground: .color("FFE9ED"))
            }
          }.padding(.trailing, -24)
        }.padding(.horizontal,24)
        
        
      }
      if self.show {
        //Spacer()
        GeometryReader { _ in
          CompletedPopUp()
        }//.frame(maxWidth: .infinity)
        //.frame(alignment: .trailing)
        .padding(.leading, 64)
        .padding(.top, 280)
        .background {
          Color.black.opacity(0)
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
              withAnimation {
                self.show.toggle()
              }
            }
        }
      }
      if self.returnBack {
        //Spacer()
        GeometryReader { _ in
         Home()
        }//.frame(maxWidth: .infinity)
        //.frame(alignment: .trailing)
//        .padding(.leading, 64)
//        .padding(.top, 280)
        .background {
          Color.black.opacity(0)
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
             // withAnimation {
                self.returnBack.toggle()
             // }
            }
        }
      }
      if self.showCalendar {
        //Spacer()
        GeometryReader { _ in
         Filter()
        }//.frame(maxWidth: .infinity)
        //.frame(alignment: .trailing)
//        .padding(.leading, 64)
         .padding(.top, 160)
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
    }.background(.white)
  }
}

struct Completed_Previews: PreviewProvider {
  static var previews: some View {
    Completed()
  }
}
struct CardCompleted: View {
  var name: String
  var color: Color
  var colorUrgent: Color
  var time: String
  var colorBackground: Color
  //@State var show = false
  var body: some View {
//    Button(action: {
//           withAnimation{
//             show.toggle()
//           }
//         }, label: {
    VStack(alignment: .leading, spacing: 21){
      HStack(spacing: 0){
        Rectangle()
          .frame(width: 2, height: 34.78).foregroundColor(color)
          .padding(.top, 7.11)
          .padding(.trailing, 10)
     
          VStack(alignment: .leading, spacing: 8){
            Text(name)
              .font(.system(size: 16, weight: .medium, design: .default))
              .foregroundColor(.color("2C406E"))
            
            Text(time)
              .font(.system(size: 14, weight: .medium, design: .default))
              .foregroundColor(.color("9AA8C7"))
          }
       
        Spacer()
        VStack(spacing: 1.92){
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
      HStack(spacing: 6){
        Text("Urgent")
          .font(.system(size: 10, weight: .medium, design: .default))
          .foregroundColor(colorUrgent)
          .padding(.horizontal, 6)
          .padding(.vertical, 3)
          .background(colorBackground)
          .cornerRadius(3)
          //.frame(height: 20)
        Text("Home")
          .font(.system(size: 10, weight: .medium, design: .default))
          .foregroundColor(color)
          .padding(.horizontal, 6)
          .padding(.vertical, 3)
          .background(color.opacity(0.2))
          .cornerRadius(3)
      }.padding(.leading, 10)
      
    }.padding(15)
      .padding(.trailing, -5)
      .background(.color("EBF9FF"), in: Rectangle()).cornerRadius(15)
//        // })
//    if self.show {
//        //Spacer()
//        GeometryReader { _ in
//          CompletedPopUp()
//        }//.frame(maxWidth: .infinity)
//        //.frame(alignment: .trailing)
////      .padding(.leading, 206)
////        .padding(.top, 76)
//        .background {
//         Color.black.opacity(0)
//            .edgesIgnoringSafeArea(.all)
//            .onTapGesture {
//              withAnimation {
//                self.show.toggle()
//              }
//            }
//        }
   // }
  }
}

struct CompletedPopUp: View {
      var body: some View {
        
        VStack(alignment: .leading, spacing: 17){
          HStack(spacing: 8){
            Image("Image 33")
            Text("Restore")
              .font(.system(size: 16, weight: .medium, design: .default))
              .padding(.bottom, 6)
          }
          HStack{
            Image("Image 32")
            Text("Delete")
              .font(.system(size: 16, weight: .medium, design: .default))
              .padding(.bottom, 6)
          }
        }.padding(.vertical, 26)
          .padding(.leading, 25)
          .padding(.trailing, 22)
          .background(.color("FFFFFF"))
          .cornerRadius(14)
          .shadow(color: .color("F1F7FF"), radius: 13, x: -3, y: 7)
        //        .padding(.leading, 64)
        //        .padding(.top, 283)
     
    }
  }

struct CompletedPopUp_Previews: PreviewProvider {
  static var previews: some View {
    CompletedPopUp()
  }
}
