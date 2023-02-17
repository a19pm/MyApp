//
//  Pending.swift
//  Alina
//
//  Created by Dmitry on 12/01/2023.
//

import SwiftUI

struct Pending: View {
  @State var show = false
  @State var returnBack = false
  @State var showCalendar = false
  var body: some View {
    ZStack{
      ScrollView{
        VStack(alignment: .leading, spacing: 0){
          UpView(title: "Pending", returnBackProfile: $returnBack, showCalendar: $showCalendar)
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
                CardPending(name: "Cleaning Clothes", color: .color("8F99EB"), colorUrgent: .color("F57C96"), time: "07:00 - 07:15", colorBackground: .color("FFE9ED"), colorBack: .color("EEF0FF"))
              })
              CardPending(name: "Cleaning Clothes", color: .color("8F99EB"), colorUrgent: .color("F57C96"), time: "07:00 - 07:15", colorBackground: .color("FFE9ED"), colorBack: .color("EEF0FF"))
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
              CardPending(name: "Cleaning Clothes", color: .color("8F99EB"), colorUrgent: .color("F57C96"), time: "07:00 - 07:15", colorBackground: .color("FFE9ED"), colorBack: .color("EEF0FF"))
              CardPending(name: "Cleaning Clothes", color: .color("8F99EB"), colorUrgent: .color("F57C96"), time: "07:00 - 07:15", colorBackground: .color("FFE9ED"), colorBack: .color("EEF0FF"))
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
              CardPending(name: "Cleaning Clothes", color: .color("8F99EB"), colorUrgent: .color("F57C96"), time: "07:00 - 07:15", colorBackground: .color("FFE9ED"), colorBack: .color("EEF0FF"))
              CardPending(name: "Cleaning Clothes", color: .color("8F99EB"), colorUrgent: .color("F57C96"), time: "07:00 - 07:15", colorBackground: .color("FFE9ED"), colorBack: .color("EEF0FF"))
            }
          }.padding(.trailing, -24)
        }.padding(.horizontal,24)
      }
      if self.show {
        //Spacer()
        GeometryReader { _ in
          PendingPopUp()
        }//.frame(maxWidth: .infinity)
        //.frame(alignment: .trailing)
        .padding(.leading, 60)
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

struct Pending_Previews: PreviewProvider {
  static var previews: some View {
    Pending()
  }
}


struct PendingPopUp: View {
  var body: some View {
      VStack(alignment: .leading, spacing: 17){
        HStack(spacing: 13){
          Image("Image 34")
          Text("Enable")
            .font(.system(size: 16, weight: .medium, design: .default))
            .padding(.bottom, 6)
        }
        HStack(spacing: 13){
          Image("Image 35")
          Text("Edit")
            .font(.system(size: 16, weight: .medium, design: .default))
            .padding(.bottom, 6)
        }
        HStack{
          Image("Image 36")
          Text("Delete")
            .font(.system(size: 16, weight: .medium, design: .default))
            .padding(.bottom, 6)
        }
      }.padding(.vertical, 26)
        .padding(.leading, 25)
        .padding(.trailing, 30)
        .background(.color("FFFFFF"))
        .cornerRadius(14)
        .shadow(color: .color("F1F7FF"), radius: 13, x: -3, y: 7)
//        .padding(.leading, 60)
//        .padding(.top, 283)
    
  }
}


struct CardPending: View {
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
          .background(color.opacity(0.2))
          .cornerRadius(3)
      }.padding(.leading, 10)
    }.padding(15)
      .padding(.trailing, -5)
      .background(colorBack, in: Rectangle()).cornerRadius(15)
      
  }
}
struct Canceled: View {
  @State var show = false
  @State var returnBack = false
  @State var showCalendar = false
  var body: some View {
    ZStack{
      ScrollView{
        VStack(alignment: .leading, spacing: 0){
          UpView(title: "Canceled", returnBackProfile: $returnBack, showCalendar: $showCalendar)
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
                CardPending(name: "Cleaning Clothes", color: .color("E88B8C"), colorUrgent: .color("F57C96"), time: "07:00 - 07:15", colorBackground: .color("FFE9ED"), colorBack: .color("FFF2F2"))
              })
              CardPending(name: "Cleaning Clothes", color: .color("E88B8C"), colorUrgent: .color("F57C96"), time: "07:00 - 07:15", colorBackground: .color("FFE9ED"), colorBack: .color("FFF2F2"))
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
              CardPending(name: "Cleaning Clothes", color: .color("E88B8C"), colorUrgent: .color("F57C96"), time: "07:00 - 07:15", colorBackground: .color("FFE9ED"), colorBack: .color("FFF2F2"))
              CardPending(name: "Cleaning Clothes", color: .color("E88B8C"), colorUrgent: .color("F57C96"), time: "07:00 - 07:15", colorBackground: .color("FFE9ED"), colorBack: .color("FFF2F2"))
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
              CardPending(name: "Cleaning Clothes", color: .color("E88B8C"), colorUrgent: .color("F57C96"), time: "07:00 - 07:15", colorBackground: .color("FFE9ED"), colorBack: .color("FFF2F2"))
              CardPending(name: "Cleaning Clothes", color: .color("E88B8C"), colorUrgent: .color("F57C96"), time: "07:00 - 07:15", colorBackground: .color("FFE9ED"), colorBack: .color("FFF2F2"))
            }
          }.padding(.trailing, -24)
        }.padding(.horizontal,24)
      }
      if self.show {
        //Spacer()
        GeometryReader { _ in
          CanceledPopUp()
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
struct Canceled_Previews: PreviewProvider {
  static var previews: some View {
   Canceled()
  }
}

struct CanceledPopUp: View {
  var body: some View {
   // ZStack(alignment: .topLeading){
     // Canceled()
      VStack(alignment: .leading, spacing: 17){
        HStack(spacing: 13){
          Image("Image 34")
          Text("Enable")
            .font(.system(size: 16, weight: .medium, design: .default))
            .padding(.bottom, 6)
        }
        HStack(spacing: 13){
          Image("Image 35")
          Text("Edit")
            .font(.system(size: 16, weight: .medium, design: .default))
            .padding(.bottom, 6)
        }
        HStack{
          Image("Image 36")
          Text("Delete")
            .font(.system(size: 16, weight: .medium, design: .default))
            .padding(.bottom, 6)
        }
      }.padding(.vertical, 26)
        .padding(.leading, 25)
        .padding(.trailing, 30)
        .background(.color("FFFFFF"))
        .cornerRadius(14)
        .shadow(color: .color("F1F7FF"), radius: 13, x: -3, y: 7)
//        .padding(.leading, 64)
//        .padding(.top, 283)
    //}
  }
}

struct OnGoing: View {
  @State var show = false
  @State var showFilter = false
  @State var showCalendar = false
  @State var returnBack = false
  
  var body: some View {
    ZStack{
      ScrollView{
        VStack(alignment: .leading, spacing: 0){
          UpView(title: "On Going", returnBackProfile: $returnBack, showCalendar: $showFilter)
          HStack(spacing: 17){
            Button(action: {
              withAnimation{
                showCalendar.toggle()
              }
            }, label: {
              Image("Image 31")
            })
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
                CardPending(name: "Cleaning Clothes", color: .color("67EF8D"), colorUrgent: .color("F57C96"), time: "07:00 - 07:15", colorBackground: .color("FFE9ED"), colorBack: .color("F2FDF5"))
              })
              CardPending(name: "Cleaning Clothes", color: .color("67EF8D"), colorUrgent: .color("F57C96"), time: "07:00 - 07:15", colorBackground: .color("FFE9ED"), colorBack: .color("F2FDF5"))
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
              CardPending(name: "Cleaning Clothes", color: .color("67EF8D"), colorUrgent: .color("F57C96"), time: "07:00 - 07:15", colorBackground: .color("FFE9ED"), colorBack: .color("F2FDF5"))
              CardPending(name: "Cleaning Clothes", color: .color("67EF8D"), colorUrgent: .color("F57C96"), time: "07:00 - 07:15", colorBackground: .color("FFE9ED"), colorBack: .color("F2FDF5"))
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
              CardPending(name: "Cleaning Clothes", color: .color("67EF8D"), colorUrgent: .color("F57C96"), time: "07:00 - 07:15", colorBackground: .color("FFE9ED"), colorBack: .color("F2FDF5"))
              CardPending(name: "Cleaning Clothes", color: .color("67EF8D"), colorUrgent: .color("F57C96"), time: "07:00 - 07:15", colorBackground: .color("FFE9ED"), colorBack: .color("F2FDF5"))
            }
          }.padding(.trailing, -24)
        }.padding(.horizontal,24)
      }

      if self.showCalendar {
        //Spacer()
        GeometryReader { _ in
          Calendar2()
        }//.frame(maxWidth: .infinity)
        //.frame(alignment: .trailing)
//        .padding(.leading, 60)
        .padding(.top, 149)
        .background {
          Color.color("1F1F1F").opacity(0.6)
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
              
                self.showCalendar.toggle()
              
            }
        }
      }
      if self.show {
        //Spacer()
        GeometryReader { _ in
          OnGoingPopUp()
        }//.frame(maxWidth: .infinity)
        //.frame(alignment: .trailing)
        .padding(.leading, 60)
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
      if self.showFilter {
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
                self.showFilter.toggle()
             // }
            }
        }
      }
    }.background(.white)
  }
}
struct OnGoing_Previews: PreviewProvider {
  static var previews: some View {
    OnGoing()
  }
}
struct OnGoingPopUp: View {
  var body: some View {
    
      VStack(alignment: .leading, spacing: 17){
        HStack(spacing: 13){
          Image("Image 37")
          Text("Disable")
            .font(.system(size: 16, weight: .medium, design: .default))
            .padding(.bottom, 6)
        }
        HStack(spacing: 13){
          Image("Image 35")
          Text("Edit")
            .font(.system(size: 16, weight: .medium, design: .default))
            .padding(.bottom, 6)
        }
        HStack{
          Image("Image 36")
          Text("Delete")
            .font(.system(size: 16, weight: .medium, design: .default))
            .padding(.bottom, 6)
        }
      }.padding(.vertical, 26)
        .padding(.leading, 25)
        .padding(.trailing, 30)
        .background(.color("FFFFFF"))
        .cornerRadius(14)
        .shadow(color: .color("F1F7FF"), radius: 13, x: -3, y: 7)
//        .padding(.leading, 64)
//        .padding(.top, 283)
    
  }
}
struct OngoingPopUp_Previews: PreviewProvider {
  static var previews: some View {
    OnGoingPopUp()
  }
}
struct OnGoing2: View {
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
          Text("On going")
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
            CardPending(name: "Cleaning Clothes", color: .color("67EF8D"), colorUrgent: .color("F57C96"), time: "07:00 - 07:15", colorBackground: .color("FFE9ED"), colorBack: .color("F2FDF5"))
            CardPending(name: "Cleaning Clothes", color: .color("67EF8D"), colorUrgent: .color("F57C96"), time: "07:00 - 07:15", colorBackground: .color("FFE9ED"), colorBack: .color("F2FDF5"))
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
            CardPending(name: "Cleaning Clothes", color: .color("67EF8D"), colorUrgent: .color("F57C96"), time: "07:00 - 07:15", colorBackground: .color("FFE9ED"), colorBack: .color("F2FDF5"))
            CardPending(name: "Cleaning Clothes", color: .color("67EF8D"), colorUrgent: .color("F57C96"), time: "07:00 - 07:15", colorBackground: .color("FFE9ED"), colorBack: .color("F2FDF5"))
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
            CardPending(name: "Cleaning Clothes", color: .color("8F99EB"), colorUrgent: .color("8F99EB"), time: "07:00 - 07:15", colorBackground: .color("E4E7F9"), colorBack: .color("F9FAFD"))
            CardPending(name: "Cleaning Clothes", color: .color("E88B8C"), colorUrgent: .color("E88B8C"), time: "07:00 - 07:15", colorBackground: .color("F5E4E6"), colorBack: .color("F9FAFD"))
          }
        }.padding(.trailing, -24)
      }.padding(.horizontal,24)
    }
    
  }
}
