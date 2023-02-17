//
//  Profile1.swift
//  Alina
//
//  Created by Dmitry on 28/12/2022.
//

import SwiftUI


struct Profile1: View {
  @State var show = false
  @State var showSettings = false
  @State var logOut = false
  @State var createBoard = false
  @State var personal = false
  @State var privat = false
  @State var event = false
  @State var work = false
  @State var meeting = false
  @State var isSelectedHome = false
  @State  var isSelectedTask = false
  @State  var isSelectedGraphic = false
  @State   var isSelectedProfile = false
  var body: some View {
    ZStack{
      ScrollView{
        VStack(spacing: 0){
          HStack{
            Spacer()
            Button(action: {
              withAnimation{
                show.toggle()
              }
            }, label: {
              Image("Image 18").padding()
                .background(.white)
                .cornerRadius(14)
                .shadow(color: .color("F1F7FF"), radius: 13, x: -3, y: 7)
            })
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
              Button(action: {
                withAnimation{
                  personal.toggle()
                }
              }, label: {
                Cards(image: "Image 20", text: "Personal", count: 6, color: .color("858FE9"), colorBack: .color("858FE9"), opacity: 0.25)
              })
              Button(action: {
                withAnimation{
                  privat.toggle()
                }
              }, label: {
                Cards(image: "Image 21", text: "Private", count: 3, color: .color("E77D7D"), colorBack: .color("FFE4E4"), opacity: 0.25)
              })
              Button(action: {
                withAnimation{
                  event.toggle()
                }
              }, label: {
                Cards(image: "Image 22", text: "Events", count: 4, color: .color("858FE9"), colorBack: .color("E0E3F9"), opacity: 1)
              })
            }
            VStack(spacing: 18){
              Button(action: {
                withAnimation{
                  work.toggle()
                }
              }, label: {
                Cards(image: "Image 23", text: "Work", count: 8, color: .color("7FC9E7"), colorBack: .color("7FC9E7"), opacity: 0.25)
              })
              Button(action: {
                withAnimation{
                  meeting.toggle()
                }
              }, label: {
                Cards(image: "Image 24", text: "Meeting", count: 4, color: .color("81E89E"), colorBack: .color("CBF9D8"), opacity: 0.25)
              })
              Button(action: {
                withAnimation{
                  createBoard.toggle()
                }
              }, label: {
                Cards(image: "Image 25", text: "Create Board", count: 4, color: .color("F0A58E"), colorBack: .color("FFEFEB"), opacity: 1)
              })
            }
          }
        }.padding(.horizontal,24)
      }
      //      .background(.white).safeAreaInset(edge: .bottom) {
      //        MainTabView1()}
      
      
      if self.show {
        //Spacer()
        GeometryReader { _ in
          ProfilePopUp(showSetting: $showSettings, logOut: $logOut)
        }.frame(maxWidth: .infinity)
        //.frame(alignment: .trailing)
          .padding(.leading, 206)
          .padding(.top, 76)
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
      if self.showSettings {
        //Spacer()
        GeometryReader { _ in
          Setting()
        }.frame(maxWidth: .infinity)
        //.frame(alignment: .trailing)
        //        .padding(.leading, 206)
        //          .padding(.top, 76)
          .background {
            Color.black.opacity(0)
              .edgesIgnoringSafeArea(.all)
              .onTapGesture {
                withAnimation {
                  self.showSettings.toggle()
                }
              }
          }
      }
      if self.logOut {
        //Spacer()
        GeometryReader { _ in
          ProfilePopUpLogOut()
        }.frame(maxWidth: .infinity)
        //.frame(alignment: .trailing)
        //        .padding(.leading, 206)
        //          .padding(.top, 76)
          .background {
            Color.black.opacity(0.6)
              .edgesIgnoringSafeArea(.all)
              .onTapGesture {
                withAnimation {
                  self.logOut.toggle()
                }
              }
          }
      }
      if self.createBoard {
        //Spacer()
        GeometryReader { _ in
          ProfileCreateBoard()
        }.frame(maxWidth: .infinity)
        //.frame(alignment: .trailing)
        //        .padding(.leading, 206)
        //          .padding(.top, 76)
          .background {
            Color.black.opacity(0.6)
              .edgesIgnoringSafeArea(.all)
              .onTapGesture {
                withAnimation {
                  self.createBoard.toggle()
                }
              }
          }
      }
      if self.personal {
        //Spacer()
        GeometryReader { _ in
          Personal()
        }.frame(maxWidth: .infinity)
        //.frame(alignment: .trailing)
        //        .padding(.leading, 206)
        //          .padding(.top, 76)
          .background {
            Color.black.opacity(0.6)
              .edgesIgnoringSafeArea(.all)
              .onTapGesture {
                withAnimation {
                  self.personal.toggle()
                }
              }
          }
      }
      if self.privat {
        //Spacer()
        GeometryReader { _ in
          Private()
        }.frame(maxWidth: .infinity)
        //.frame(alignment: .trailing)
        //        .padding(.leading, 206)
        //          .padding(.top, 76)
          .background {
            Color.black.opacity(0.6)
              .edgesIgnoringSafeArea(.all)
              .onTapGesture {
                withAnimation {
                  self.privat.toggle()
                }
              }
          }
      }
      if self.work {
        //Spacer()
        GeometryReader { _ in
          Work()
        }.frame(maxWidth: .infinity)
        //.frame(alignment: .trailing)
        //        .padding(.leading, 206)
        //          .padding(.top, 76)
          .background {
            Color.black.opacity(0.6)
              .edgesIgnoringSafeArea(.all)
              .onTapGesture {
                withAnimation {
                  self.work.toggle()
                }
              }
          }
      }
      if self.meeting {
        //Spacer()
        GeometryReader { _ in
          Meeting()
        }.frame(maxWidth: .infinity)
        //.frame(alignment: .trailing)
        //        .padding(.leading, 206)
        //          .padding(.top, 76)
          .background {
            Color.black.opacity(0.6)
              .edgesIgnoringSafeArea(.all)
              .onTapGesture {
                withAnimation {
                  self.meeting.toggle()
                }
              }
          }
      }
      if self.event {
        //Spacer()
        GeometryReader { _ in
          Event()
        }.frame(maxWidth: .infinity)
        //.frame(alignment: .trailing)
        //        .padding(.leading, 206)
        //          .padding(.top, 76)
          .background {
            Color.black.opacity(0)
              .edgesIgnoringSafeArea(.all)
              .onTapGesture {
                withAnimation {
                  self.event.toggle()
                }
              }
          }
      }
    }.background(.white)
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
  @Binding var showSetting: Bool
  @Binding var logOut: Bool
  var body: some View {
    
      VStack(alignment: .leading, spacing: 17){
        Button {
          showSetting.toggle()
        } label: {
          HStack(spacing: 13){
                  Image("Image 47")
                  Text("Setting")
                    .font(.system(size: 16, weight: .medium, design: .default))
                    .foregroundColor(.color("10275A"))
                    .padding(.bottom, 6)
                }
        }
        Button {
          logOut.toggle()
        } label: {
          HStack(spacing: 13){
                   Image("Image 48")
                   Text("Log Out")
                     .font(.system(size: 16, weight: .medium, design: .default))
                     .foregroundColor(.color("10275A"))
                     .padding(.bottom, 6)
                 }
        }
      }
        .padding(28.5)
        .padding(.trailing, -8.5)
        .background(.white)
        .cornerRadius(10)
        .shadow(color: .color("DBDADA"), radius: 20, x: 0, y: -3)
//        .padding(.top, 76)
//        .padding(.trailing, 25)
    
  }
}
//struct ProfilePopUp_Previews: PreviewProvider {
//  static var previews: some View {
//    ProfilePopUp(showSetting: show)
//  }
//}

struct Setting: View {
  @State var showLanguage = false
  @State var deleteAccount = false
  var body: some View {
    ZStack{
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
            Button {
              showLanguage.toggle()
            } label: {
              Image("Image 49")
                .padding(.bottom, -5)
            }
          }
          Button {
            deleteAccount.toggle()
          } label: {
            Text("Delete Account")
              .font(.system(size: 16, weight: .medium, design: .rounded))
              .foregroundColor(.color("10275A"))
              .padding(.top, 3)
          }
          Text("Notifications")
            .font(.system(size: 16, weight: .medium, design: .rounded))
            .foregroundColor(.color("10275A"))
            .padding(.top, 16)
          HStack{
            Text("Allow Notification")
              .font(.system(size: 16, weight: .medium, design: .rounded))
              .foregroundColor(.color("10275A"))
            Spacer()
            Allow()
          }
          HStack{
            Text("Allow the Notification Rings")
              .font(.system(size: 16, weight: .medium, design: .rounded))
              .foregroundColor(.color("10275A"))
            Spacer()
            Allow()
          }.padding(.top, 2)
        }
        Spacer()
      }.padding(.horizontal, 24)
      if self.showLanguage {
        //Spacer()
        GeometryReader { _ in
          SettingPopUp()
        }//.frame(maxWidth: .infinity)
        //.frame(alignment: .trailing)
        //.padding(.leading, 153)
        //.padding(.top, 300)
        .background {
          Color.black.opacity(0.6)
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
              withAnimation {
                self.showLanguage.toggle()
              }
            }
        }
      }
      if self.deleteAccount {
        //Spacer()
        GeometryReader { _ in
          ProfilwPopUpLogOut()
        }//.frame(maxWidth: .infinity)
        //.frame(alignment: .trailing)
        //.padding(.leading, 153)
        //.padding(.top, 300)
        .background {
          Color.black.opacity(0.6)
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
              withAnimation {
                self.deleteAccount.toggle()
              }
            }
        }
      }
    }.background(.white)
  }
}
struct Allow: View {
  @State var isSelected = false
  var body: some View {
    Button {
      isSelected.toggle()
    } label: {
      ZStack(alignment: isSelected ? .trailing : .leading){
         Rectangle().frame(width: 38.33, height: 23)
           .cornerRadius(12)
           .foregroundColor(isSelected ? .color("5B67CA") : .color("B1C0DE"))
         Circle().frame(width: 15.33, height: 15.33)
           .foregroundColor(.color("FFFFFF"))
           .padding(3.83)
       }.padding(.bottom, -6)
    }
 
  }
}
struct Setting_Previews: PreviewProvider {
  static var previews: some View {
   Setting()
  }
}

struct SettingPopUp: View {
  var body: some View {
//    ZStack(alignment: .top){
//      ZStack{
//        Setting()
//        Rectangle()
//          .ignoresSafeArea()
//          .foregroundColor(.color("1F1F1F").opacity(0.6))
//      }
      VStack(spacing: 29){
        Text("Language")
          .font(.system(size: 22, weight: .medium, design: .rounded))
          .foregroundColor(.color("10275A"))
        VStack(alignment: .leading, spacing: 24){
         Lang(text: "English")
          Lang(text: "Chinese")
          Lang(text: "Japanese")
          Lang(text: "Korean")
          Lang(text: "Russian")
        }.font(.system(size: 18, weight: .medium, design: .rounded))
          .foregroundColor(.color("10275A"))
      }.padding(25)
        .padding(.bottom, 19)
        .background(.white)
        .cornerRadius(20)
        .shadow(color: .color("DBDADA"), radius: 20, x: 0, y: -3)
        .padding(.horizontal, 20)
        .padding(.top, 199)
//    }
    
  }
}
struct Lang: View {
  var text : String
  @State var isSelected = false
  var body: some View {
    Button {
      isSelected.toggle()
    } label: {
      HStack{
          Text(text)
            .font(.system(size: 18, weight: .medium, design: .rounded))
            .foregroundColor(.color("10275A"))
          Spacer()
          if isSelected {
            Image("Image 50")
          }
        }
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
//    ZStack(alignment: .top){
//      ZStack{
//        Setting()
//        Rectangle()
//          .ignoresSafeArea()
//          .foregroundColor(.color("1F1F1F").opacity(0.6))
//      }
      VStack(spacing: 28){
        Text("Delete Account")
          .font(.system(size: 22, weight: .medium, design: .default))
          .foregroundColor(.color("10275A"))
          Text("Are you sure to delete this account ?").multilineTextAlignment(.leading)
            .font(.system(size: 18, weight: .medium, design: .default))
            .foregroundColor(.color("10275A"))
         
        HStack(spacing: 20){
          CanSav(text: "Cancel")
          CanSav(text: "Sure")
        }.padding(.top, 9)
      
      }.padding(.horizontal, 9)
        .padding(.vertical, 24)
        .padding(.bottom, 6)
        .frame(maxWidth: .infinity)
        .background(.white)
        .cornerRadius(20)
        .shadow(color: .color("DBDADA"), radius: 20, x: 0, y: -3)
        .padding(.horizontal, 19)
        .padding(.top, 251)
//    }
    
  }
}
struct CanSav: View {
  @State var isSelected = false
  var text : String
  var body: some View {
    Button{
      isSelected.toggle()
    } label: {
      Text(text)
        .font(.system(size: 14, weight: .medium, design: .default))
        .foregroundColor(isSelected ? .white : .color("5B67CA"))
        .frame(width: 91, height: 35)
        .overlay(RoundedRectangle(cornerRadius: 8).stroke(.color("5B67CA"), lineWidth: isSelected ? 0 : 1.5 ))
       
        .background( isSelected ? .color("5B67CA") : .clear)
        .cornerRadius(8)
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
 
      VStack(spacing: 27){
        Text("Log Out")
          .font(.system(size: 22, weight: .medium, design: .default))
          .foregroundColor(.color("10275A"))
          Text("Are you sure to log out from this account ?").multilineTextAlignment(.center)
            .font(.system(size: 18, weight: .medium, design: .default))
            .foregroundColor(.color("10275A"))
         
        HStack(spacing: 20){
          CanSav(text: "Cancel")
          CanSav(text: "Sure")
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
struct ProfilePopUpLogOut2_Previews: PreviewProvider {
  static var previews: some View {
    ProfilePopUpLogOut()
  }
}
struct ProfileCreateBoard: View {
  var body: some View {
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
            Choice()
            Text("Personal")
              .font(.system(size: 16, weight: .medium, design: .rounded))
              .foregroundColor(.color("10275A"))
            Spacer()
            Choice()
            Text("Private")
              .font(.system(size: 16, weight: .medium, design: .rounded))
              .foregroundColor(.color("10275A"))
            Spacer()
            Choice()
            Text("Secret")
              .font(.system(size: 16, weight: .medium, design: .rounded))
              .foregroundColor(.color("10275A"))
          }//.padding(.top, 16)
            .padding(.bottom, 21)
        }
        }

        HStack(spacing: 20){
          CanSav(text: "Cancel")
          CanSav(text: "Create")
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
struct ProfileCreateBoard_Previews: PreviewProvider {
  static var previews: some View {
    ProfileCreateBoard()
  }
}
struct Choice: View {
  @State var isSelected = false
  var body: some View {
    Button {
      isSelected.toggle()
    } label: {
      if isSelected{
        Image("Image 40")
          .padding(.top, 5)
      } else {
        Rectangle().frame(width: 12, height: 12).overlay(RoundedRectangle(cornerRadius: 4).stroke(.color("E3EAFF"), lineWidth: 0.79 )).foregroundColor(.clear)
          .shadow(color: .color("F1F7FF"), radius: 4, x: -0.9, y: 2.15)
          .padding(.top, 5)
      }
    }
  }
}
