//
//  FilterByCalenar.swift
//  Alina
//
//  Created by Dmitry on 12/01/2023.
//

import SwiftUI
struct Filter: View {
  var body: some View {
//    ZStack(alignment: .bottom){
//      ZStack{
//           OnGoing2()
//           Rectangle()
//             .foregroundColor(.color("1F1F1F").opacity(0.6))
//             .ignoresSafeArea()
//         }
      VStack(alignment: .leading, spacing: 0){
        Text("Sort by tag")
          .font(.system(size: 14.84, weight: .medium, design: .default))
        HStack(spacing: 5.56){
          Text("Office")
            .foregroundColor(.color("8F81FE"))
            .frame(width: 71.35, height: 31)
            .background(.color("ECEAFF"))
            .cornerRadius(20)
          Text("Home")
            .foregroundColor(.color("F0A58E"))
            .frame(width: 71.35, height: 31)
            .background(.color("FFEFEB"))
            .cornerRadius(20)
          Text("Urgent")
            .foregroundColor(.color("F57C96"))
            .frame(width: 75.98, height: 31)
            .background(.color("FFE9ED"))
            .cornerRadius(20)
          Text("Work")
            .foregroundColor(.color("1EC1C3"))
            .frame(width: 67.64, height: 31)
            .background(.color("D1FEFF"))
            .cornerRadius(20)
        }.font(.system(size: 12.97, weight: .medium, design: .default))
          .padding(.top, 22)
          .padding(.bottom, 32)
        Text("Sort by type")
          .font(.system(size: 14.84, weight: .medium, design: .default))
        HStack{
          Text("Private")
            .frame(width: 80, height: 31)
            .background(.color("8F99EB"))
            .cornerRadius(20)
          Text("Personal")
            .frame(width: 86, height: 31)
            .background(.color("E88B8C"))
            .cornerRadius(20)
          Text("Secret")
            .frame(width: 86, height: 31)
            .background(.color("7EC8E7"))
            .cornerRadius(20)
        } .font(.system(size: 13, weight: .medium, design: .default))
          .foregroundColor(.white)
          .padding(.top, 23)
          .padding(.bottom, 32)
        Text("Sort by")
          .font(.system(size: 14.84, weight: .medium, design: .default))
        HStack{
          Text("Newest")
            .frame(width: 80, height: 31)
            .background(.color("F9FAFD"))
            .cornerRadius(20)
          Text("Farthest")
            .frame(width: 86, height: 31)
            .background(.color("F9FAFD"))
            .cornerRadius(20)
        }.font(.system(size: 13, weight: .medium, design: .default))
          .padding(.top, 19)
          .padding(.bottom, 45)
        HStack{
          Spacer()
          CanSav(text: "Cancel")
          CanSav(text: "Filter")
          Spacer()
        }.font(.system(size: 14, weight: .medium, design: .default))
      }.padding(.horizontal, 20)
        .padding(.top, 20)
        .padding(.bottom, 36)
        .background(.white)
        .cornerRadius(18.56)
        .padding(.horizontal, 16)
//        .padding(.bottom, 170)
    //}
   
  }
}

struct Filter_Previews: PreviewProvider {
  static var previews: some View {
    Filter()
  }
}

struct Calendar2: View {
  
  var body: some View {

      VStack(spacing: 0){
        CalendarView()
        HStack(spacing: 20){
          CanSav(text: "Cancel")
          CanSav(text: "Save")
        }
      }.padding(.top, 10)
        .padding(.bottom, 30)
        .background(.white)
        .cornerRadius(20)
        .padding(.horizontal, 16.5)
        //.padding(.bottom, 165)
        
        
    
  }
}
    
struct Calendar2_Previews: PreviewProvider {
  static var previews: some View {
    Calendar2()
  }
}


struct Calendar3: View {
  
  var body: some View {

      VStack(spacing: 0){
        CalendarView()
        HStack(spacing: 20){
          CanSav(text: "Cancel")
          CanSav(text: "Save")
        }
      }.padding(.top, 10)
        .padding(.bottom, 30)
        .background(.white)
        .cornerRadius(20)
        .padding(.horizontal, 16.5)
        //.padding(.bottom, 165)
        
        
    
  }
}
    
struct Calendar3_Previews: PreviewProvider {
  static var previews: some View {
    Calendar3()
  }
}
struct Calendar4: View {
  
  var body: some View {

      VStack(spacing: 0){
        CalendarView()
        HStack(spacing: 20){
          CanSav(text: "Cancel")
          CanSav(text: "Save")
        }
      }.padding(.top, 10)
        .padding(.bottom, 30)
        .background(.white)
        .cornerRadius(20)
        .padding(.horizontal, 16.5)
        .padding(.bottom, 165)
        
        
    }
  }

    
struct Calendar4_Previews: PreviewProvider {
  static var previews: some View {
    Calendar4()
  }
}
struct AddTaskTime: View {
  
  var body: some View {
//    ZStack(alignment: .bottom){
//      ZStack{
//        AddTask()
//        Rectangle()
//          .foregroundColor(.color("1F1F1F").opacity(0.6))
//          .ignoresSafeArea()
//      }
      VStack(spacing: 0){
        Text("Edit time")
          .font(.system(size: 22, weight: .medium, design: .default))
          .foregroundColor(.color("10275A"))
          .padding(.bottom, 33)
        HStack(spacing: 26){
          VStack(spacing: 12){
            Text("05")
              .font(.system(size: 20, weight: .medium, design: .default))
              .foregroundStyle(LinearGradient(colors: [.color("BFBFDF").opacity(0.01), .color("BFBFDF")], startPoint: .top, endPoint: .bottom))
             
            Text("06")
              .font(.system(size: 22, weight: .medium, design: .default))
              .foregroundColor(.color("BFBFDF"))
            Text("07")
              .font(.system(size: 26, weight: .medium, design: .default))
              .foregroundColor(.color("5B67CA"))
            Text("08")
              .font(.system(size: 22, weight: .medium, design: .default))
              .foregroundColor(.color("BFBFDF"))
            Text("09")
              .font(.system(size: 20, weight: .medium, design: .default))
              .foregroundStyle(LinearGradient(colors: [.color("BFBFDF").opacity(0.01), .color("BFBFDF")], startPoint: .bottom, endPoint: .top))
          }
          Text("h")
            .font(.system(size: 22, weight: .medium, design: .default))
            .foregroundColor(.color("5B67CA"))
          Spacer()
          VStack(spacing: 12){
            Text("28")
              .font(.system(size: 20, weight: .medium, design: .default))
              .foregroundStyle(LinearGradient(colors: [.color("BFBFDF").opacity(0.01), .color("BFBFDF")], startPoint: .top, endPoint: .bottom))
            Text("29")
              .font(.system(size: 22, weight: .medium, design: .default))
              .foregroundColor(.color("BFBFDF"))
            Text("30")
              .font(.system(size: 26, weight: .medium, design: .default))
              .foregroundColor(.color("5B67CA"))
            Text("31")
              .font(.system(size: 22, weight: .medium, design: .default))
              .foregroundColor(.color("BFBFDF"))
            Text("32")
              .font(.system(size: 20, weight: .medium, design: .default))
              .foregroundStyle(LinearGradient(colors: [.color("BFBFDF").opacity(0.01), .color("BFBFDF")], startPoint: .bottom, endPoint: .top))
          }
          Text("m")
            .font(.system(size: 22, weight: .medium, design: .default))
            .foregroundColor(.color("5B67CA"))
        }.padding(.horizontal, 42)
          .padding(.bottom, 38)
        Rectangle()
          .frame(height: 1)
          .foregroundColor(.color("E8E9F3"))
        HStack{
          Text("Reminder Mode")
            .font(.system(size: 18, weight: .medium, design: .default))
            .foregroundColor(.color("10275A"))
            
          Spacer()
          Text("Ring")
            .font(.system(size: 16, weight: .medium, design: .default))
            .foregroundColor(.color("10275A"))
          Image("Image 52")
            .padding(.top, 6)
        }.padding(.top, 17)
          .padding(.bottom, 23)
          .padding(.horizontal, 18)
          .padding(.trailing, 7)
        Rectangle()
          .frame(height: 1)
          .foregroundColor(.color("E8E9F3"))
        HStack(spacing: 20){
          CanSav(text: "Cancel")
          CanSav(text: "Save")
        }.padding(.top, 40)
      }.padding(.top, 26)
        .padding(.bottom, 30)
        .background(.white)
        .cornerRadius(20)
        .padding(.horizontal, 16.5)
//        .padding(.bottom, 130)
        
        
//    }
  }
}
    
struct Time_Previews: PreviewProvider {
  static var previews: some View {
    AddTaskTime()
  }
}
