//
//  Personal.swift
//  Alina
//
//  Created by Dmitry on 16/01/2023.
//

import SwiftUI

struct Personal: View {
  var body: some View {
    ScrollView{
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
          Text("Personal")
            .font(.system(size: 18, weight: .medium, design: .rounded))
            .padding(.trailing, 48)
          Spacer()
        }
        HStack{
          HStack(spacing: 15){
            Image("Search1")
            Text("Search for task")
              .font(.system(size: 14, weight: .medium, design: .default))
              .foregroundColor(.color("C8CDD9"))
            Spacer()
            Image("Image 29")
          }.padding(.horizontal, 20)
            .padding(.vertical, 15)
            .background(.color("F6F6F6"), in: Rectangle()).cornerRadius(15)
          Image("Image 30")
            .padding(13)
            .background(.color("F6F6F6"))
            .cornerRadius(15)
        }.padding(.top, 31)
          .padding(.bottom, 23)
        
        VStack(spacing: 18){
          CardPersonal(name: "Cleaning Clothes", color: .color("8F81FE"), colorUrgent: .color("8F81FE"), time: "07:00 - 07:15", colorBackground: .color("ECEAFF"), colorBack: .color("F6F7FF"))
          CardPersonal(name: "Cleaning Clothes", color: .color("8F81FE"), colorUrgent: .color("8F81FE"), time: "07:15 - 07:35", colorBackground: .color("ECEAFF"), colorBack: .color("F6F7FF"))
          CardPersonal(name: "Cleaning Clothes", color: .color("8F81FE"), colorUrgent: .color("8F81FE"), time: "07:00 - 07:15", colorBackground: .color("ECEAFF"), colorBack: .color("F6F7FF"))
          CardPersonal(name: "Cleaning Clothes", color: .color("8F81FE"), colorUrgent: .color("8F81FE"), time: "07:15 - 07:35", colorBackground: .color("ECEAFF"), colorBack: .color("F6F7FF"))
        }
        Spacer()
        HStack{
          Spacer()
          ZStack{
            Circle()
              .fill(LinearGradient(colors: [.color("5B67CA"), .color("A3A9D9")], startPoint:.topTrailing , endPoint: .bottomLeading))
              .frame(width: 50)
              .shadow(color: .color("F1F7FF"), radius: 13, x: -3, y: 7)
              //.background(in: Circle(), fillStyle: LinearGradient(colors: [.color("5B67CA"), .color("A3A9D9")], startPoint: .bottomLeading, endPoint: .topTrailing))
            Text("+")
              .font(.system(size: 24))
              .foregroundColor(.white)
          }
          
        }.ignoresSafeArea().padding(.top, 8)
      }
      
      
    }.padding(.horizontal, 24)
  }
}

struct Personal_Previews: PreviewProvider {
  static var previews: some View {
    Personal()
  }
}
struct CardPersonal: View {
  var name: String
  var color: Color
  var colorUrgent: Color
  var time: String
  var colorBackground: Color
  var colorBack: Color
 
  var body: some View {
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
          .background(colorBackground)
          .cornerRadius(3)
      }.padding(.leading, 10)
    }.padding(15)
      .padding(.trailing, -5)
      .background(colorBack, in: Rectangle()).cornerRadius(15)
      
  }
}


struct AddPersonal: View {
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
        Text("Add Personal")
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
            Image("Image 39")
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
              Text("07:00 AM")
                .font(.system(size: 16, weight: .medium, design: .rounded))
                .foregroundColor(.color("10275A"))
                .padding(.bottom, 18)
              Rectangle().frame(width: .infinity, height: 1).foregroundColor(.color("E8E9F3"))
            }
            VStack(spacing: 0){
              Text("07:30 AM")
                .font(.system(size: 16, weight: .medium, design: .rounded))
                .foregroundColor(.color("10275A"))
                .padding(.bottom, 18)
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
            VStack(spacing: 1.92){
              Rectangle().frame(width: 1.75, height: 1.75)
              Rectangle().frame(width: 1.75, height: 1.75)
              Rectangle().frame(width: 1.75, height: 1.75)
            }.foregroundColor(.color("A8AEDF"))
          }
          Rectangle().frame(width: .infinity, height: 1).foregroundColor(.color("E8E9F3"))
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
          Text("+ Add new tag")
            .font(.system(size: 12, weight: .medium, design: .rounded))
            .foregroundColor(.color("12175D"))
            .multilineTextAlignment(.center)
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
    
  }
}

struct AddPersonal_Previews: PreviewProvider {
  static var previews: some View {
    AddPersonal()
  }
}
struct Work: View {
  var body: some View {
    ScrollView{
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
          Text("Work")
            .font(.system(size: 18, weight: .medium, design: .rounded))
            .padding(.trailing, 48)
          Spacer()
        }
        HStack{
          HStack(spacing: 15){
            Image("Search1")
            Text("Search for task")
              .font(.system(size: 14, weight: .medium, design: .default))
              .foregroundColor(.color("C8CDD9"))
            Spacer()
            Image("Image 29")
          }.padding(.horizontal, 20)
            .padding(.vertical, 15)
            .background(.color("F6F6F6"), in: Rectangle()).cornerRadius(15)
          Image("Image 30")
            .padding(13)
            .background(.color("F6F6F6"))
            .cornerRadius(15)
        }.padding(.top, 31)
          .padding(.bottom, 23)
        
        VStack(spacing: 18){
          CardPersonal(name: "Web UI Design", color: .color("37C5FF"), colorUrgent: .color("37C5FF"), time: "07:00 - 07:15", colorBackground: .color("D8F4FF"), colorBack: .color("F5FCFF"))
          CardPersonal(name: "Web UI Design", color: .color("37C5FF"), colorUrgent: .color("37C5FF"), time: "07:15 - 07:30", colorBackground: .color("D8F4FF"), colorBack: .color("F5FCFF"))
          CardPersonal(name: "Web UI Design", color: .color("37C5FF"), colorUrgent: .color("37C5FF"), time: "07:00 - 07:15", colorBackground: .color("D8F4FF"), colorBack: .color("F5FCFF"))
          CardPersonal(name: "Web UI Design", color: .color("37C5FF"), colorUrgent: .color("37C5FF"), time: "07:15 - 07:30", colorBackground: .color("D8F4FF"), colorBack: .color("F5FCFF"))
          
        }
        Spacer()
        HStack{
          Spacer()
          ZStack{
            Circle()
              .fill(LinearGradient(colors: [.color("5B67CA"), .color("A3A9D9")], startPoint:.topTrailing , endPoint: .bottomLeading))
              .frame(width: 50)
              .shadow(color: .color("F1F7FF"), radius: 13, x: -3, y: 7)
              
              //.background(in: Circle(), fillStyle: LinearGradient(colors: [.color("5B67CA"), .color("A3A9D9")], startPoint: .bottomLeading, endPoint: .topTrailing))
            Text("+")
              .font(.system(size: 24))
              .foregroundColor(.white)
          }
          
        }.ignoresSafeArea().padding(.top, 8)
      }
      
      
    }.padding(.horizontal, 24)
  }
}

struct Work_Previews: PreviewProvider {
  static var previews: some View {
  Work()
  }
}

struct Private: View {
  var body: some View {
    ScrollView{
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
          Text("Private")
            .font(.system(size: 18, weight: .medium, design: .rounded))
            .padding(.trailing, 48)
          Spacer()
        }
        HStack{
          HStack(spacing: 15){
            Image("Search1")
            Text("Search for task")
              .font(.system(size: 14, weight: .medium, design: .default))
              .foregroundColor(.color("C8CDD9"))
            Spacer()
            Image("Image 29")
          }.padding(.horizontal, 20)
            .padding(.vertical, 15)
            .background(.color("F6F6F6"), in: Rectangle()).cornerRadius(15)
          Image("Image 30")
            .padding(13)
            .background(.color("F6F6F6"))
            .cornerRadius(15)
        }.padding(.top, 31)
          .padding(.bottom, 23)
        
        VStack(spacing: 18){
          CardPersonal(name: "Web UI Design", color: .color("F0A58E"), colorUrgent: .color("F0A58E"), time: "07:00 - 07:15", colorBackground: .color("FFEAE3"), colorBack: .color("FDF5F5"))
          CardPersonal(name: "Web UI Design", color: .color("F0A58E"), colorUrgent: .color("F0A58E"), time: "07:15 - 07:30", colorBackground: .color("FFEAE3"), colorBack: .color("FDF5F5"))
          CardPersonal(name: "Web UI Design", color: .color("F0A58E"), colorUrgent: .color("F0A58E"), time: "07:00 - 07:15", colorBackground: .color("FFEAE3"), colorBack: .color("FDF5F5"))
          CardPersonal(name: "Web UI Design", color: .color("F0A58E"), colorUrgent: .color("F0A58E"), time: "07:15 - 07:30", colorBackground: .color("FFEAE3"), colorBack: .color("FDF5F5"))
          
        }
        Spacer()
        HStack{
          Spacer()
          ZStack{
            Circle()
              .fill(LinearGradient(colors: [.color("5B67CA"), .color("A3A9D9")], startPoint:.topTrailing , endPoint: .bottomLeading))
              .frame(width: 50)
              .shadow(color: .color("F1F7FF"), radius: 13, x: -3, y: 7)
              
              //.background(in: Circle(), fillStyle: LinearGradient(colors: [.color("5B67CA"), .color("A3A9D9")], startPoint: .bottomLeading, endPoint: .topTrailing))
            Text("+")
              .font(.system(size: 24))
              .foregroundColor(.white)
          }
          
        }.ignoresSafeArea().padding(.top, 8)
      }
      
      
    }.padding(.horizontal, 24)
  }
}

struct Private_Previews: PreviewProvider {
  static var previews: some View {
    Private()
  }
}

struct AddPrivate: View {
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
        Text("Add private")
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
            Image("Image 39")
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
              Text("07:00 AM")
                .font(.system(size: 16, weight: .medium, design: .rounded))
                .foregroundColor(.color("10275A"))
                .padding(.bottom, 18)
              Rectangle().frame(width: .infinity, height: 1).foregroundColor(.color("E8E9F3"))
            }
            VStack(spacing: 0){
              Text("07:30 AM")
                .font(.system(size: 16, weight: .medium, design: .rounded))
                .foregroundColor(.color("10275A"))
                .padding(.bottom, 18)
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
            VStack(spacing: 1.92){
              Rectangle().frame(width: 1.75, height: 1.75)
              Rectangle().frame(width: 1.75, height: 1.75)
              Rectangle().frame(width: 1.75, height: 1.75)
            }.foregroundColor(.color("A8AEDF"))
          }
          Rectangle().frame(width: .infinity, height: 1).foregroundColor(.color("E8E9F3"))
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
          Text("+ Add new tag")
            .font(.system(size: 12, weight: .medium, design: .rounded))
            .foregroundColor(.color("12175D"))
            .multilineTextAlignment(.center)
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
    
  }
}

struct AddPrivate_Previews: PreviewProvider {
  static var previews: some View {
    AddPrivate()
  }
}
struct Meeting: View {
  var body: some View {
    ScrollView{
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
          Text("Meeting")
            .font(.system(size: 18, weight: .medium, design: .rounded))
            .padding(.trailing, 48)
          Spacer()
        }
        HStack{
          HStack(spacing: 15){
            Image("Search1")
            Text("Search for task")
              .font(.system(size: 14, weight: .medium, design: .default))
              .foregroundColor(.color("C8CDD9"))
            Spacer()
            Image("Image 29")
          }.padding(.horizontal, 20)
            .padding(.vertical, 15)
            .background(.color("F6F6F6"), in: Rectangle()).cornerRadius(15)
          Image("Image 30")
            .padding(13)
            .background(.color("F6F6F6"))
            .cornerRadius(15)
        }.padding(.top, 31)
          .padding(.bottom, 23)
        
        VStack(spacing: 18){
          CardPersonal(name: "Meeting", color: .color("39C8CB"), colorUrgent: .color("39C8CB"), time: "07:00 - 07:15", colorBackground: .color("DCF7F3"), colorBack: .color("F8FFFA"))
          CardPersonal(name: "Meeting", color: .color("39C8CB"), colorUrgent: .color("39C8CB"), time: "07:00 - 07:15", colorBackground: .color("DCF7F3"), colorBack: .color("F8FFFA"))
          CardPersonal(name: "Meeting", color: .color("39C8CB"), colorUrgent: .color("39C8CB"), time: "07:00 - 07:15", colorBackground: .color("DCF7F3"), colorBack: .color("F8FFFA"))
          CardPersonal(name: "Meeting", color: .color("39C8CB"), colorUrgent: .color("39C8CB"), time: "07:00 - 07:15", colorBackground: .color("DCF7F3"), colorBack: .color("F8FFFA"))
          
        }
        Spacer()
        HStack{
          Spacer()
          ZStack{
            Circle()
              .fill(LinearGradient(colors: [.color("5B67CA"), .color("A3A9D9")], startPoint:.topTrailing , endPoint: .bottomLeading))
              .frame(width: 50)
              .shadow(color: .color("F1F7FF"), radius: 13, x: -3, y: 7)
              
              //.background(in: Circle(), fillStyle: LinearGradient(colors: [.color("5B67CA"), .color("A3A9D9")], startPoint: .bottomLeading, endPoint: .topTrailing))
            Text("+")
              .font(.system(size: 24))
              .foregroundColor(.white)
          }
          
        }.ignoresSafeArea().padding(.top, 8)
      }
      
      
    }.padding(.horizontal, 24)
  }
}

struct Meeting_Previews: PreviewProvider {
  static var previews: some View {
    Meeting()
  }
}
struct Event: View {
  var body: some View {
    ZStack{
      ScrollView{
        VStack(spacing: 0){
          HStack{
            Image("Image 26")
              .padding(.horizontal, 20.5)
              .padding(.top, 18)
              .padding(.bottom, 16)
              .background(.white)
              .cornerRadius(14)
              .shadow(color: .color("F1F7FF"), radius: 13, x: -3, y: 7)
            Spacer()
            Text("Events")
              .font(.system(size: 18, weight: .medium, design: .rounded))
              .padding(.trailing, 48)
            Spacer()
          }
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
            
          }.padding(.top, 32)
            .padding(.bottom, 15)
          HStack(spacing: 28){
            Day(day: "MO", date: "12", isSelected: false)
            
            Day(day: "TU", date: "13", isSelected: false)
            
            Day(day: "WE", date: "14", isSelected: true).padding(.horizontal, -13)
            
            Day(day: "TH", date: "15", isSelected: false)
            
            Day(day: "FR", date: "16", isSelected: false)
           
            Day(day: "SA", date: "17", isSelected: false)
            
            Day(day: "SU", date: "18", isSelected: false)
          }
          HStack{
            Text("Events")
              .font(.system(size: 20, weight: .medium, design: .default))
              .foregroundColor(.color("10275A"))
            Spacer()
          }.padding(.top, 24)
            .padding(.bottom, 20)
          VStack(spacing: 18){
            CardPersonal(name: "Design Seminar", color: .color("8F81FE"), colorUrgent: .color("8F81FE"), time: "07:15 - 07:35", colorBackground: .color("ECEAFF"), colorBack: .color("F6F7FF"))
            CardPersonal(name: "Design Seminar", color: .color("8F81FE"), colorUrgent: .color("8F81FE"), time: "07:00 - 07:15", colorBackground: .color("ECEAFF"), colorBack: .color("F6F7FF"))
            CardPersonal(name: "Design Seminar", color: .color("8F81FE"), colorUrgent: .color("8F81FE"), time: "07:15 - 07:35", colorBackground: .color("ECEAFF"), colorBack: .color("F6F7FF"))
          }
          Spacer()
          HStack{
            Spacer()
            ZStack{
              Circle()
                .fill(LinearGradient(colors: [.color("5B67CA"), .color("A3A9D9")], startPoint:.topTrailing , endPoint: .bottomLeading))
                .frame(width: 50)
                .shadow(color: .color("F1F7FF"), radius: 13, x: -3, y: 7)
                
                //.background(in: Circle(), fillStyle: LinearGradient(colors: [.color("5B67CA"), .color("A3A9D9")], startPoint: .bottomLeading, endPoint: .topTrailing))
              Text("+")
                .font(.system(size: 24))
                .foregroundColor(.white)
            }
            
          }.ignoresSafeArea().padding(.top, 41)
        }
        
        
      }.padding(.horizontal, 24)
        //.background(.white).safeAreaInset(edge: .bottom) {
          //TabDailoz(isSelectedHome: false, isSelectedTask: true, isSelectedGraphic: false, isSelectedProfile: false)}
      }
      

    
  }
}

struct Event_Previews: PreviewProvider {
  static var previews: some View {
    Event()
  }
}

struct AddEvent: View {
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
        Text("Add Event")
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
            Image("Image 39")
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
              Text("07:00 AM")
                .font(.system(size: 16, weight: .medium, design: .rounded))
                .foregroundColor(.color("10275A"))
                .padding(.bottom, 18)
              Rectangle().frame(width: .infinity, height: 1).foregroundColor(.color("E8E9F3"))
            }
            VStack(spacing: 0){
              Text("07:30 AM")
                .font(.system(size: 16, weight: .medium, design: .rounded))
                .foregroundColor(.color("10275A"))
                .padding(.bottom, 18)
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
            VStack(spacing: 1.92){
              Rectangle().frame(width: 1.75, height: 1.75)
              Rectangle().frame(width: 1.75, height: 1.75)
              Rectangle().frame(width: 1.75, height: 1.75)
            }.foregroundColor(.color("A8AEDF"))
          }
          Rectangle().frame(width: .infinity, height: 1).foregroundColor(.color("E8E9F3"))
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
          Text("+ Add new tag")
            .font(.system(size: 12, weight: .medium, design: .rounded))
            .foregroundColor(.color("12175D"))
            .multilineTextAlignment(.center)
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
    
  }
}

struct AddEvent_Previews: PreviewProvider {
  static var previews: some View {
    AddEvent()
  }
}
