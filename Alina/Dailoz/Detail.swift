//
//  Detail.swift
//  Alina
//
//  Created by Dmitry on 14/01/2023.
//

import SwiftUI

struct Detail: View {
  var body: some View {
    VStack(alignment: .leading, spacing: 0){
      HStack{
        Image("Image 26")
          .padding(.horizontal, 20.5)
          .padding(.top, 18)
          .padding(.bottom, 16)
          .background(.white)
          .cornerRadius(14)
          .shadow(color: .color("F1F7FF"), radius: 13, x: -3, y: 7)
        Spacer()
        Text("Detail")
          .font(.system(size: 18, weight: .medium, design: .rounded))
          //.padding(.trailing, 48)
        Spacer()
        Image("Image 18").padding()
          .background(.white)
          .cornerRadius(14)
          .shadow(color: .color("F1F7FF"), radius: 13, x: -3, y: 7)
      }
      VStack(alignment: .leading, spacing: 0){
        
        Text("Plan for a month")
          .font(.system(size: 24, weight: .medium, design: .rounded))
          .foregroundColor(.color("10275A"))
          .padding(.top, 31)
                  .padding(.bottom, 18)
              Text("Personal type")
          .font(.system(size: 14, weight: .medium, design: .rounded))
          .foregroundColor(.color("10275A"))
          
      }
    
      HStack(spacing: 11){
        //Spacer()
        VStack(alignment: .leading, spacing: 4){
          Text("Est. Date")
            .font(.system(size: 18, weight: .medium, design: .rounded))
            .foregroundColor(.white.opacity(0.5)).opacity(0.5)
          Text("4 August 2021")
            .font(.system(size: 18, weight: .medium, design: .rounded))
            .foregroundColor(.white)
        }.padding(14)
          .padding(.top, 3)
          .padding(.bottom, 4)
          .padding(.leading, 2)
        .background(LinearGradient(colors: [.color("E77D7D") , .color("FE9D9D") ], startPoint: .bottomLeading, endPoint: .topTrailing))
          .cornerRadius(14)
        //.background(in: Rectangle().fill(LinearGradient(colors: [.color("FE9D9D"), .color("E77D7D")], startPoint: .bottomLeading, endPoint: .topTrailing)))
          
        VStack(alignment: .leading, spacing: 4){
          Text("Est. Time")
            .font(.system(size: 18, weight: .medium, design: .rounded))
            .foregroundColor(.white.opacity(0.5)).opacity(0.5)
          Text("07:00 - 07:30 AM")
            .font(.system(size: 18, weight: .medium, design: .rounded))
            .foregroundColor(.white)
        }
          .padding(.top, 17)
          .padding(.bottom, 18)
          .padding(.leading, 16)
          .background(LinearGradient(colors: [.color("E77D7D") , .color("FE9D9D") ], startPoint: .bottomLeading, endPoint: .topTrailing))
          .cornerRadius(14)
        //Spacer()
      }.padding(.top, 28)
        .padding(.bottom, 30)
      Text("Task")
        .font(.system(size: 20, weight: .medium, design: .rounded))
        .foregroundColor(.color("10275A"))
      VStack(spacing: 13){
        HStack(spacing: 14){
          Rectangle().frame(width: 24, height: 24).overlay(RoundedRectangle(cornerRadius: 8.62).stroke(.color("E3EAFF"), lineWidth: 1.58 )).foregroundColor(.clear)
            .shadow(color: .color("F1F7FF"), radius: 4, x: -1.85, y: 4.31)
            .padding(.bottom, 17)
          VStack(alignment: .leading, spacing: 0){
            Text("Creating this month's work \nplan")
              .font(.system(size: 16, weight: .medium, design: .rounded))
              .foregroundColor(.color("2E426E"))
              
            Rectangle().frame(height: 1).foregroundColor(.color("F4F7FF"))
          }
        }
        HStack(spacing: 14){
          Rectangle().frame(width: 24, height: 24).overlay(RoundedRectangle(cornerRadius: 8.62).stroke(.color("E3EAFF"), lineWidth: 1.58 )).foregroundColor(.clear)
            .shadow(color: .color("F1F7FF"), radius: 4, x: -1.85, y: 4.31)
            .padding(.bottom, 17)
          VStack(alignment: .leading, spacing: 0){
            Text("Creating this month's work \nplan")
              .font(.system(size: 16, weight: .medium, design: .rounded))
              .foregroundColor(.color("2E426E"))
            Rectangle().frame(height: 1).foregroundColor(.color("F4F7FF"))
          }
        }
        HStack(spacing: 11){
          Image("Image 46")
            .padding(.bottom, 14)
          VStack(alignment: .leading, spacing: 0){
            Text("Creating this month's work \nplan")
              .font(.system(size: 16, weight: .medium, design: .rounded))
              .foregroundColor(.color("2E426E"))
            Rectangle().frame(height: 1).foregroundColor(.color("F4F7FF"))
          }
        }
        HStack(spacing: 11){
          Image("Image 46").padding(.bottom, 14)
          VStack(alignment: .leading, spacing: 0){
            Text("Creating this month's work \nplan")
              .font(.system(size: 16, weight: .medium, design: .rounded))
              .foregroundColor(.color("2E426E"))
            Rectangle().frame(height: 1).foregroundColor(.color("F4F7FF"))
          }
        }
      }.padding(.top, 32)
        .padding(.bottom, 31)
      HStack{
        Text("Tag")
          .font(.system(size: 20, weight: .medium, design: .rounded))
          .foregroundColor(.color("10275A"))
      }
     
      HStack(spacing: 6){
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
        .padding(.top, 24)
      Spacer()
    }.padding(.horizontal, 24)
        }
        
      }
    

struct Detail_Previews: PreviewProvider {
  static var previews: some View {
    Detail()
  }
}
