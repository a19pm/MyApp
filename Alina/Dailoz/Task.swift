//
//  Task.swift
//  Alina
//
//  Created by Dmitry on 13/01/2023.
//

import SwiftUI


struct TaskEmpty: View {
  @State var isSelectedHome = false
  @State  var isSelectedTask = false
  @State  var isSelectedGraphic = false
  @State   var isSelectedProfile = false
  var body: some View {
    ZStack{
      ScrollView{
        VStack(spacing: 0){
          HStack(spacing: 15){
            Image("Search1")
            Text("Search for task")
              .font(.system(size: 14, weight: .medium, design: .default))
              .foregroundColor(.color("CED0E7"))
            Spacer()
            Image("Close Square")
          }.padding(.horizontal, 20)
            .padding(.vertical, 15)
          .background(.color("F6F6F6"), in: Rectangle()).cornerRadius(15)
          HStack{
            Text("Task")
              .font(.system(size: 24, weight: .medium, design: .default))
              .foregroundColor(.color("10275A"))
            Spacer()
            HStack(spacing: 6){
              Image("Calendar")
                .padding(.top, 2)
              Text("August 2021").font(.system(size: 12, weight: .medium, design: .default))
                            .foregroundColor(.color("525F77"))
            }
            
          }.padding(.top, 31)
            .padding(.bottom, 18)
          HStack(spacing: 0){
            HStack{
              Day(day: "MO", date: "12")
              Spacer()
              Day(day: "TU", date: "13")
              Spacer()
              Day(day: "WE", date: "14")
              Spacer()
            }
            HStack{
              Day(day: "TH", date: "15")
              Spacer()
              Day(day: "FR", date: "16")
              Spacer()
              Day(day: "SA", date: "17")
              Spacer()
              Day(day: "SU", date: "18")
            }
          }
          HStack{
            Text("Today")
              .font(.system(size: 20, weight: .medium, design: .default))
              .foregroundColor(.color("10275A"))
            Spacer()
          }.padding(.top, 24)
          VStack{
            Image("Image 38")
              .padding(.top, 50)
              .padding(.bottom, 35)
            Text("You don't have any shedule today.")
            Text("Tap the plus button to create new to-do.")
              .multilineTextAlignment(.center)
          }.font(.system(size: 14, weight: .medium, design: .default))
            .foregroundColor(.color("575757"))
          
          }.padding(.horizontal,24)
        }.background(.white).safeAreaInset(edge: .bottom) {
          TabDailoz(isSelectedHome: $isSelectedHome, isSelectedTask: $isSelectedTask, isSelectedGraphic: $isSelectedGraphic, isSelectedProfile: $isSelectedProfile)}
      }
      

    
  }
}

struct TaskEmpty_Previews: PreviewProvider {
  static var previews: some View {
    TaskEmpty()
  }
}

struct AddTask: View {
  @State var showCalendar = false
  @State var showDescription = false
  @State var showAddTag = false
  @State var showEditTime = false
  var tittle : String
  var hasType: Bool
  @Binding var returnBack : Bool
  var body: some View {
    ZStack{
      VStack(alignment: .leading, spacing: 0){
        HStack{
          Button {
            returnBack.toggle()
          } label: {
            Image("Image 26")
              .padding(.horizontal, 20.5)
              .padding(.top, 18)
              .padding(.bottom, 16)
              .background(.white)
              .cornerRadius(14)
              .shadow(color: .color("F1F7FF"), radius: 13, x: -3, y: 7)
          }
          Spacer()
          Text(tittle)
            .font(.system(size: 18, weight: .medium, design: .rounded))
            .padding(.trailing, 48)
          Spacer()
        }.padding(.bottom, 31)
        VStack(alignment: .leading, spacing: 0){
          VStack(alignment: .leading, spacing: 0){
            Text("Tittle")
              .font(.system(size: 14, weight: .medium, design: .rounded))
              .foregroundColor(.color("8A8BB3"))
            Text("Plan for a month")
              .font(.system(size: 16, weight: .medium, design: .rounded))
              .foregroundColor(.color("10275A"))
              .padding(.top, 16)
              .padding(.bottom, 18)
            Rectangle().frame(width: .infinity, height: 1).foregroundColor(.color("E8E9F3"))
          }
          VStack(alignment: .leading, spacing: 0){
            Text("Date")
              .font(.system(size: 14, weight: .medium, design: .rounded))
              .foregroundColor(.color("8A8BB3"))
              .padding(.top, 21)
            HStack{
              Text("4 August 2021")
                .font(.system(size: 16, weight: .medium, design: .rounded))
                .foregroundColor(.color("10275A"))
                .padding(.top, 16)
                .padding(.bottom, 18)
              Spacer()
              Button(action: {
                withAnimation{
                  showCalendar.toggle()
                }
              }, label: {
                Image("Image 39")
              })
            }
            Rectangle().frame(width: .infinity, height: 1).foregroundColor(.color("E8E9F3"))
          }
          VStack(alignment: .leading, spacing: 0){
            Text("Time")
              .font(.system(size: 14, weight: .medium, design: .rounded))
              .foregroundColor(.color("8A8BB3"))
              .padding(.top, 25)
            HStack(spacing: 15.94){
              VStack(spacing: 0){
                Time45(text: "07:00 AM", showEditTime: $showEditTime)
                Rectangle().frame(width: .infinity, height: 1).foregroundColor(.color("E8E9F3"))
              }
              VStack(spacing: 0){
                Time45(text: "07:30 AM", showEditTime: $showEditTime)
                Rectangle().frame(width: .infinity, height: 1).foregroundColor(.color("E8E9F3"))
              }
              
            }.padding(.top, 16)
            
            
          }
          VStack(alignment: .leading, spacing: 0){
            Text("Description")
              .font(.system(size: 14, weight: .medium, design: .rounded))
              .foregroundColor(.color("8A8BB3"))
              .padding(.top, 25)
            HStack{
              Text("Creating this month's work plan")
                .font(.system(size: 16, weight: .medium, design: .rounded))
                .foregroundColor(.color("10275A"))
                .padding(.top, 16)
                .padding(.bottom, 18)
              Spacer()
              Button(action: {
                withAnimation{
                  showDescription.toggle()
                }
              }, label: {
                VStack(spacing: 1.92){
                  Rectangle().frame(width: 1.75, height: 1.75)
                  Rectangle().frame(width: 1.75, height: 1.75)
                  Rectangle().frame(width: 1.75, height: 1.75)
                }.foregroundColor(.color("A8AEDF"))
              })
            }
            Rectangle().frame(width: .infinity, height: 1).foregroundColor(.color("E8E9F3"))
          }
          if hasType {
            VStack(alignment: .leading, spacing: 0){
              Text("Type")
                .font(.system(size: 14, weight: .medium, design: .rounded))
                .foregroundColor(.color("8A8BB3"))
                .padding(.top, 21)
              HStack(spacing: 21) {
                HStack(spacing: 8) {
                  Choice()
                  Text("Personal")
                    .font(.system(size: 16, weight: .medium, design: .rounded))
                    .foregroundColor(.color("10275A"))
                }
                
                HStack(spacing: 8) {
                  Choice()
                  Text("Private")
                    .font(.system(size: 16, weight: .medium, design: .rounded))
                    .foregroundColor(.color("10275A"))
                  
                }
                HStack(spacing: 8) {
                  Choice()
                  Text("Secret")
                    .font(.system(size: 16, weight: .medium, design: .rounded))
                    .foregroundColor(.color("10275A"))
                  
                }
              }.padding(.top, 16)
                //.padding(.bottom, 28)
            }
          }
          VStack(alignment: .leading, spacing: 0){
            Text("Tags")
              .font(.system(size: 14, weight: .medium, design: .rounded))
              .foregroundColor(.color("8A8BB3"))
            HStack(spacing: 6){
              Text("Office")
                .foregroundColor(.color("8F81FE"))
                .frame(width: 77, height: 34)
                .background(.color("ECEAFF"))
                .cornerRadius(20)
              Text("Home")
                .foregroundColor(.color("F0A58E"))
                .frame(width: 77, height: 34)
                .background(.color("FFEFEB"))
                .cornerRadius(20)
              Text("Urgent")
                .foregroundColor(.color("F57C96"))
                .frame(width: 82, height: 34)
                .background(.color("FFE9ED"))
                .cornerRadius(20)
              Text("Work")
                .foregroundColor(.color("1EC1C3"))
                .frame(width: 73, height: 34)
                .background(.color("D1FEFF"))
                .cornerRadius(20)
            }.font(.system(size: 14, weight: .medium, design: .default))
              .padding(.top, 22)
              .padding(.bottom, 16)
          }.padding(.top, 25)
          HStack{
            Spacer()
            Button(action: {
              withAnimation{
                showAddTag.toggle()
              }
            }, label: {
              Text("+ Add new tag")
                .font(.system(size: 12, weight: .medium, design: .rounded))
                .foregroundColor(.color("A8AEDF"))
                .multilineTextAlignment(.center)
            })
            Spacer()
          }
          Spacer()
          Text("Create")
            .font(.system(size: 18, weight: .medium, design: .rounded))
            .foregroundColor(.white)
            .padding(.vertical,15)
            .padding(.bottom, 5)
            .frame(maxWidth: .infinity)
            .background(.color("5B67CA"))
            .cornerRadius(14)
            .shadow(color: .color("F1F7FF"), radius: 13, x: -3, y: 7)
          
          
        }
      }.padding(.horizontal, 24)
      if self.showCalendar {
        //Spacer()
        GeometryReader { _ in
          Calendar3()
        }//.frame(maxWidth: .infinity)
        //.frame(alignment: .trailing)
        //.padding(.leading, 64)
        .padding(.top, 149)
        .background {
          Color.black.opacity(0.6)
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
             // withAnimation {
                self.showCalendar.toggle()
              //}
            }
        }
      }
      if self.showDescription {
        //Spacer()
        GeometryReader { _ in
          AddTaskPopUp()
        }//.frame(maxWidth: .infinity)
        //.frame(alignment: .trailing)
        .padding(.leading, 174)
        .padding(.top, 416)
        .background {
          Color.black.opacity(0)
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
             // withAnimation {
                self.showDescription.toggle()
              //}
            }
        }
      }
      if self.showAddTag {
        //Spacer()
        GeometryReader { _ in
          AddTaskNewTag()
        }//.frame(maxWidth: .infinity)
        //.frame(alignment: .trailing)
        //.padding(.leading, 64)
        .padding(.top, 247)
        .background {
          Color.black.opacity(0.6)
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
             // withAnimation {
                self.showAddTag.toggle()
              //}
            }
        }
      }
      if self.showEditTime {
        //Spacer()
        GeometryReader { _ in
          AddTaskTime()
        }//.frame(maxWidth: .infinity)
        //.frame(alignment: .trailing)
        //.padding(.leading, 64)
        .padding(.top, 126)
        .background {
          Color.black.opacity(0.6)
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
             // withAnimation {
                self.showEditTime.toggle()
              //}
            }
        }
      }
    }.background(.white)
  }
}

//struct AddTask_Previews: PreviewProvider {
//  static var previews: some View {
//    AddTask(tittle: "Add Task", hasType: true)
//  }
//}
struct Time45: View {
  var text: String
  @Binding var showEditTime: Bool
  var body: some View {
    Button(action: {
      withAnimation{
        showEditTime.toggle()
      }
    }, label: {
      Text(text)
        .font(.system(size: 16, weight: .medium, design: .rounded))
        .foregroundColor(.color("10275A"))
        .padding(.bottom, 18)
    })
  }
}
struct AddTaskPopUp: View {
  var body: some View {
//    ZStack(alignment: .bottomTrailing){
//      AddTask()
      VStack(alignment: .leading, spacing: 17){
        HStack(spacing: 16){
          ZStack{
            Circle().frame(width: 24).foregroundColor(.color("ECEAFF"))
            Image("Image 41")
          }
          Text("Align left").padding(.bottom,6)
        }
        HStack(spacing: 16){
          ZStack{
            Circle().frame(width: 24).foregroundColor(.color("ECEAFF"))
            Image("Image 42")
          }
          Text("Center").padding(.bottom,6)
        }
        HStack(spacing: 16){
          ZStack{
            Circle().frame(width: 24).foregroundColor(.color("ECEAFF"))
            Image("Image 43")
          }
          Text("Straight").padding(.bottom,6)
        }
        HStack(spacing: 16){
          ZStack{
            Circle().frame(width: 24).foregroundColor(.color("ECEAFF"))
            Image("Image 44")
          }
          Text("Align right").padding(.bottom,6)
        }
        HStack(spacing: 16){
          ZStack{
            Circle().frame(width: 24).foregroundColor(.color("ECEAFF"))
            Image("Image 45")
          }
          Text("List").padding(.bottom,6)
        }
      }.font(.system(size: 16, weight: .medium, design: .default))
        .foregroundColor(.color("10275A"))
        .padding(25)
              .padding(.trailing, 2)
              .background(.white)
              .cornerRadius(10)
              .shadow(color: .color("C5C5C5"), radius: 20, x: 16, y: 8)
              .padding(.bottom, 75)
              .padding(.trailing, 30)
//    }
  }
}

struct AddTaskPopUp_Previews: PreviewProvider {
  static var previews: some View {
    AddTaskPopUp()
  }
}

struct AddTaskNewTag: View {
  var body: some View {
//    ZStack(alignment: .bottom){
//      ZStack{
//        AddTask()
//        Rectangle()
//          .ignoresSafeArea()
//          .foregroundColor(.color("1F1F1F").opacity(0.6))
//      }
      VStack(spacing: 25){
        Text("New Tag")
          .font(.system(size: 22, weight: .medium, design: .default))
          .foregroundColor(.color("10275A"))
        HStack{
          
          Text("Progress 2").multilineTextAlignment(.leading)
            .font(.system(size: 18, weight: .medium, design: .default))
            .foregroundColor(.color("10275A"))
          Spacer()
        }.frame(maxWidth: .infinity)
          .padding(20)
          .padding(.top, -6)
          .background(.color("F6F6F6"))
          .cornerRadius(10)
          .padding(.bottom,7)
        HStack(spacing: 20){
          CanSav(text: "Cancel")
          CanSav(text: "Save")
        }
      }.padding(25)
        .padding(.top, 1)
        .padding(.trailing, 5)
        .padding(.bottom, 5)
      .background(.white)
        .cornerRadius(20)
        .shadow(color: .color("DBDADA"), radius: 20, x: 0, y: -3)
        .padding(.horizontal, 19.5)
//        .padding(.bottom, 250)
   // }
  }
}
struct AddTaskNewTag_Previews: PreviewProvider {
  static var previews: some View {
    AddTaskNewTag()
  }
}

struct TaskPopUp: View {
  var body: some View {
   
      VStack(alignment: .leading, spacing: 18){
        HStack(spacing: 17){
          Image("Image 37").resizable().frame(width: 15.42, height: 15.42)
          Text("Disable")
            .font(.system(size: 14, weight: .medium, design: .default))
            .padding(.bottom, 6)
        }
        HStack(spacing: 17){
          Image("Image 35").resizable().frame(width: 15.42, height: 15.42)
          Text("Edit")
            .font(.system(size: 14, weight: .medium, design: .default))
            .padding(.bottom, 6)
        }
        HStack(spacing: 17){
          Image("Image 36").resizable().frame(width: 15.42, height: 15.42)
          Text("Delete")
            .font(.system(size: 14, weight: .medium, design: .default))
            .padding(.bottom, 6)
        }
      }.padding(.vertical, 16)
        .padding(.leading, 15)
        .padding(.trailing, 13)
        .background(.color("FFFFFF"))
        .cornerRadius(14)
        .shadow(color: .color("F1F7FF"), radius: 13, x: -3, y: 7)
//        .padding(.trailing, 120)
//        .padding(.bottom, 267)
    
  }
}

struct TaskPopUp_Previews: PreviewProvider {
  static var previews: some View {
    TaskPopUp()
  }
}
