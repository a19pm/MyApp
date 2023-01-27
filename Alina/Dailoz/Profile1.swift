//
//  Profile1.swift
//  Alina
//
//  Created by Dmitry on 28/12/2022.
//

import SwiftUI

struct Profile1: View {
  var body: some View {
    ZStack{
      ScrollView{
        VStack(spacing: 0){
          HStack{
            Spacer()
            Image("Image 18").padding()
              .background(.white)
              .cornerRadius(14)
              .shadow(color: .color("F1F7FF"), radius: 13, x: -3, y: 7)
          }
          ZStack {
            
            Circle().frame(width: 86).foregroundColor(.white).shadow(color: .color("F1F7FF") ,radius: 13, x: -3, y: 7)
            Image("Image 19")
          }
          Text("Steve Job")
            .font(.system(size: 20, weight: .medium, design: .default))
            .foregroundColor(.color("10275A"))
            .padding(.top, 20)
            .padding(.bottom, 12)
          Text(verbatim: "SteveJob@gmail.com")
            .font(.system(size: 14, weight: .medium, design: .default))
            .foregroundColor(.color("10275A"))
            .padding(.bottom, 32)
          HStack(spacing: 14){
            VStack(spacing: 18){
              Cards(image: "Image 20", text: "Personal", count: 6, color: .color("858FE9"), colorBack: .color("858FE9"), opacity: 0.25)
              Cards(image: "Image 21", text: "Private", count: 3, color: .color("E77D7D"), colorBack: .color("FFE4E4"), opacity: 0.25)
              Cards(image: "Image 22", text: "Events", count: 4, color: .color("858FE9"), colorBack: .color("E0E3F9"), opacity: 1)
            }
            VStack(spacing: 18){
              Cards(image: "Image 23", text: "Work", count: 8, color: .color("7FC9E7"), colorBack: .color("7FC9E7"), opacity: 0.25)
              Cards(image: "Image 24", text: "Meeting", count: 4, color: .color("81E89E"), colorBack: .color("CBF9D8"), opacity: 0.25)
              Cards(image: "Image 25", text: "Create Board", count: 4, color: .color("F0A58E"), colorBack: .color("FFEFEB"), opacity: 1)
            }
          }
         
          
         
         
          
          
          
          
          
          
          
          
          
          
          }.padding(.horizontal,24)
        }.background(.white).safeAreaInset(edge: .bottom) {
          TabDailoz(isSelectedHome: false, isSelectedTask: false, isSelectedGraphic: false, isSelectedProfile: true)}
      }
      

    
  }
}

struct Profile_Previews: PreviewProvider {
  static var previews: some View {
    Profile1()
    
  }
}
struct Cards: View {
  var image: String
  var text: String
  var count: Int
  var color: Color
  var colorBack: Color
  var opacity: Double
  var body: some View {
    VStack(spacing: 0){
      Image(image)
        .padding(12)
          .background(color)
          .cornerRadius(14)
      Text(text)
        .font(.system(size: 14, weight: .medium, design: .default))
        .foregroundColor(.color("10275A"))
        .padding(.top, 11)
        .padding(.bottom, 7)
      Text("\(count) Task")
        .font(.system(size: 12, weight: .medium, design: .default))
        .foregroundColor(.color("969B97"))
    }.padding(.vertical, 21)
      //.padding(.horizontal, 45)
    .frame(width: 138, height: 138)
      .background(colorBack.opacity(opacity)).cornerRadius(14)
  }
}
struct ProfilePopUp: View {
  var body: some View {
    ZStack(alignment: .topTrailing){
      Profile1()
      VStack(alignment: .leading, spacing: 17){
        HStack(spacing: 13){
          Image("Image 47")
          Text("Setting")
            .font(.system(size: 16, weight: .medium, design: .default))
            .foregroundColor(.color("10275A"))
            .padding(.bottom, 6)
        }
        HStack(spacing: 13){
          Image("Image 48")
          Text("Log Out")
            .font(.system(size: 16, weight: .medium, design: .default))
            .foregroundColor(.color("10275A"))
            .padding(.bottom, 6)
        }
      }.padding(28.5)
        .padding(.trailing, -8.5)
        .background(.white)
        .cornerRadius(10)
        .shadow(color: .color("DBDADA"), radius: 20, x: 0, y: -3)
        .padding(.top, 76)
        .padding(.trailing, 25)
    }
  }
}
struct ProfilePopUp_Previews: PreviewProvider {
  static var previews: some View {
    ProfilePopUp()
  }
}

struct Setting: View {
  var body: some View {
    VStack(alignment: .leading, spacing: 32){
      HStack{
        Image("Image 26")
          .padding(.horizontal, 20.5)
          .padding(.top, 18)
          .padding(.bottom, 16)
          .background(.white)
          .cornerRadius(14)
          .shadow(color: .color("F1F7FF"), radius: 13, x: -3, y: 7)
        Spacer()
        Text("Setting")
          .font(.system(size: 18, weight: .medium, design: .rounded))
          .foregroundColor(.color("10275A"))
        //.padding(.trailing, 48)
        Spacer()
        ZStack { }.frame(width: 48, height: 48)
      }
      VStack(alignment: .leading, spacing: 23){
        Text("General")
          .font(.system(size: 16, weight: .medium, design: .rounded))
          .foregroundColor(.color("10275A"))
        HStack(spacing: 12.5){
          Text("Language")
            .font(.system(size: 16, weight: .medium, design: .rounded))
            .foregroundColor(.color("10275A"))
          Spacer()
          Text("English")
            .font(.system(size: 16, weight: .medium, design: .rounded))
            .foregroundColor(.color("10275A"))
          Image("Image 49")
            .padding(.bottom, -5)
        }
        Text("Delete Account")
          .font(.system(size: 16, weight: .medium, design: .rounded))
          .foregroundColor(.color("10275A"))
          .padding(.top, 3)
        Text("Notifications")
          .font(.system(size: 16, weight: .medium, design: .rounded))
          .foregroundColor(.color("10275A"))
          .padding(.top, 16)
        HStack{
          Text("Allow Notification")
            .font(.system(size: 16, weight: .medium, design: .rounded))
            .foregroundColor(.color("10275A"))
          Spacer()
          ZStack(alignment: .trailing){
            Rectangle().frame(width: 38.33, height: 23)
              .cornerRadius(12)
              .foregroundColor(.color("5B67CA"))
            Circle().frame(width: 15.33, height: 15.33)
              .foregroundColor(.color("FFFFFF"))
              .padding(3.83)
          }.padding(.bottom, -6)
        }
        HStack{
          Text("Allow the Notification Rings")
            .font(.system(size: 16, weight: .medium, design: .rounded))
            .foregroundColor(.color("10275A"))
          Spacer()
          ZStack(alignment: .leading){
            Rectangle().frame(width: 38.33, height: 23)
              .cornerRadius(12)
              .foregroundColor(.color("B1C0DE"))
            Circle().frame(width: 15.33, height: 15.33)
              .foregroundColor(.color("FFFFFF"))
              .padding(3.83)
          }.padding(.bottom, -6)
        }.padding(.top, 2)
      }
      Spacer()
    }.padding(.horizontal, 24)
  }
}

struct Setting_Previews: PreviewProvider {
  static var previews: some View {
   Setting()
  }
}

struct SettingPopUp: View {
  var body: some View {
    ZStack(alignment: .top){
      ZStack{
        Setting()
        Rectangle()
          .ignoresSafeArea()
          .foregroundColor(.color("1F1F1F").opacity(0.6))
      }
      VStack(spacing: 29){
        Text("Language")
          .font(.system(size: 22, weight: .medium, design: .rounded))
          .foregroundColor(.color("10275A"))
        VStack(alignment: .leading, spacing: 24){
          HStack{
            Text("English")
              .font(.system(size: 18, weight: .medium, design: .rounded))
              .foregroundColor(.color("10275A"))
            Spacer()
            Image("Image 50")
          }
          Text("Chinese")
            
          Text("Japanese")
          Text("Korean")
          Text("Russian")
        }.font(.system(size: 18, weight: .medium, design: .rounded))
          .foregroundColor(.color("10275A"))
      }.padding(25)
        .padding(.bottom, 19)
        .background(.white)
        .cornerRadius(20)
        .shadow(color: .color("DBDADA"), radius: 20, x: 0, y: -3)
        .padding(.horizontal, 20)
        .padding(.top, 199)
    }
    
  }
}
struct SettingPopUp_Previews: PreviewProvider {
  static var previews: some View {
    SettingPopUp()
  }
}
struct ProfilwPopUpLogOut: View {
  var body: some View {
    ZStack(alignment: .top){
      ZStack{
        Setting()
        Rectangle()
          .ignoresSafeArea()
          .foregroundColor(.color("1F1F1F").opacity(0.6))
      }
      VStack(spacing: 28){
        Text("Delete Account")
          .font(.system(size: 22, weight: .medium, design: .default))
          .foregroundColor(.color("10275A"))
          Text("Are you sure to delete this account ?").multilineTextAlignment(.leading)
            .font(.system(size: 18, weight: .medium, design: .default))
            .foregroundColor(.color("10275A"))
         
        HStack(spacing: 20){
          Text("Cancel")
            .font(.system(size: 14, weight: .medium, design: .default))
            .foregroundColor(.color("5B67CA"))
            .frame(width: 91, height: 35)
            .overlay(RoundedRectangle(cornerRadius: 8).stroke(.color("5B67CA"), lineWidth: 1.5 ))
          Text("Save")
            .font(.system(size: 14, weight: .medium, design: .default))
            .frame(width: 91, height: 35)
            .foregroundColor(.white)
            .background(.color("5B67CA"))
            .cornerRadius(8)
        }.padding(.top, 9)
      
      }.padding(.horizontal, 9)
        .padding(.vertical, 24)
        .padding(.bottom, 6)
        .background(.white)
        .cornerRadius(20)
        .shadow(color: .color("DBDADA"), radius: 20, x: 0, y: -3)
        .padding(.horizontal, 19)
        .padding(.top, 251)
    }
    
  }
}
struct ProfilePopUpLogOut_Previews: PreviewProvider {
  static var previews: some View {
    ProfilwPopUpLogOut()
  }
}
struct ProfilePopUpLogOut: View {
  var body: some View {
    ZStack(alignment: .top){
      ZStack{
        Profile1()
        Rectangle()
          .ignoresSafeArea()
          .foregroundColor(.color("1F1F1F").opacity(0.6))
      }
      VStack(spacing: 27){
        Text("Log Out")
          .font(.system(size: 22, weight: .medium, design: .default))
          .foregroundColor(.color("10275A"))
          Text("Are you sure to log out from this account ?").multilineTextAlignment(.center)
            .font(.system(size: 18, weight: .medium, design: .default))
            .foregroundColor(.color("10275A"))
         
        HStack(spacing: 20){
          Text("Cancel")
            .font(.system(size: 14, weight: .medium, design: .default))
            .foregroundColor(.color("5B67CA"))
            .frame(width: 91, height: 35)
            .overlay(RoundedRectangle(cornerRadius: 8).stroke(.color("5B67CA"), lineWidth: 1.5 ))
          Text("Save")
            .font(.system(size: 14, weight: .medium, design: .default))
            .frame(width: 91, height: 35)
            .foregroundColor(.white)
            .background(.color("5B67CA"))
            .cornerRadius(8)
        }.padding(.top, 6)
      
      }.padding(.horizontal, 52)
        .padding(.vertical, 25)
        .background(.white)
        .cornerRadius(20)
        .shadow(color: .color("DBDADA"), radius: 20, x: 0, y: -3)
        .padding(.horizontal, 19)
        .padding(.top, 260)
    }
    
  }
}
struct ProfilePopUpLogOut2_Previews: PreviewProvider {
  static var previews: some View {
    ProfilePopUpLogOut()
  }
}
struct ProfileCreateBoard: View {
  var body: some View {
    ZStack(alignment: .top){
      ZStack{
        Profile1()
        Rectangle()
          .ignoresSafeArea()
          .foregroundColor(.color("1F1F1F").opacity(0.6))
      }
      
      VStack(spacing: 16){
        HStack{
          Spacer()
          Text("Create Board")
                    .font(.system(size: 22, weight: .medium, design: .default))
                    .foregroundColor(.color("10275A"))
          Spacer()
        }.padding(.bottom, 10)
        VStack(alignment: .leading, spacing: 16){
          Text("Board Name")
            .font(.system(size: 14, weight: .medium, design: .default))
            .foregroundColor(.color("10275A"))
          HStack{
            Text("Work")
            Spacer()
          }
          .font(.system(size: 18, weight: .medium, design: .default))
          .foregroundColor(.color("10275A"))
          .multilineTextAlignment(.leading)
          .frame(maxWidth: .infinity)
          .padding(20)
          .padding(.top, -6)
          
          .background(.color("F6F6F6"))
          .cornerRadius(10)
          .padding(.bottom, 9)
        
        VStack(alignment: .leading, spacing: 16){
          Text("Type")
            .font(.system(size: 14, weight: .medium, design: .rounded))
            .foregroundColor(.color("10275A"))
            //.padding(.top, 21)
          HStack{
            Image("Image 40")
              .padding(.top, 5)
            Text("Personal")
              .font(.system(size: 16, weight: .medium, design: .rounded))
              .foregroundColor(.color("10275A"))
            Spacer()
            Rectangle().frame(width: 12, height: 12).overlay(RoundedRectangle(cornerRadius: 4).stroke(.color("E3EAFF"), lineWidth: 0.79 )).foregroundColor(.clear)
              .shadow(color: .color("F1F7FF"), radius: 4, x: -0.9, y: 2.15)
              .padding(.top, 5)
            Text("Private")
              .font(.system(size: 16, weight: .medium, design: .rounded))
              .foregroundColor(.color("10275A"))
            Spacer()
            Rectangle().frame(width: 12, height: 12).overlay(RoundedRectangle(cornerRadius: 4).stroke(.color("E3EAFF"), lineWidth: 0.79 )).foregroundColor(.clear)
              .shadow(color: .color("F1F7FF"), radius: 4, x: -0.9, y: 2.15)
              .padding(.top, 5)
            Text("Secret")
              .font(.system(size: 16, weight: .medium, design: .rounded))
              .foregroundColor(.color("10275A"))
          }//.padding(.top, 16)
            .padding(.bottom, 21)
        }
        }

        HStack(spacing: 20){
          Text("Cancel")
            .font(.system(size: 14, weight: .medium, design: .default))
            .foregroundColor(.color("5B67CA"))
            .frame(width: 91, height: 35)
            .overlay(RoundedRectangle(cornerRadius: 8).stroke(.color("5B67CA"), lineWidth: 1.5 ))
          Text("Save")
            .font(.system(size: 14, weight: .medium, design: .default))
            .frame(width: 91, height: 35)
            .foregroundColor(.white)
            .background(.color("5B67CA"))
            .cornerRadius(8)
        }.padding(.top, 6)
      
      }.padding(.horizontal, 25)
        .padding(.vertical,26)
        .padding(.trailing, 3)
      //.padding(.horizontal, 52)
        //.padding(.vertical, 25)
        .background(.white)
        .cornerRadius(20)
        .shadow(color: .color("DBDADA"), radius: 20, x: 0, y: -3)
        .padding(.horizontal, 20)
        .padding(.top, 190)
    }
    
  } 
}
struct ProfileCreateBoard_Previews: PreviewProvider {
  static var previews: some View {
    ProfileCreateBoard()
  }
}
