//
//  Graphic.swift
//  Alina
//
//  Created by Dmitry on 27/12/2022.
//

import SwiftUI

struct DottedLineView: View {
  var body: some View {
    ZStack(alignment: .bottom){
      
      DottedLine()
            .stroke(style: StrokeStyle(lineWidth: 0.2, dash: [3]))
              .frame(width: 2, height: 152.04)
              .foregroundColor(.color("10275A"))
      Circle().frame(width: 14)
    }
    
  }
}



struct PriorityGraph: View {
  var padding: Double
  var width: Double
  var color: Color
  var padding2: Double
  var width2: Double
  var color2: Color
  var padding3: Double
  var width3: Double
  var color3: Color
  var body: some View {
        ZStack(alignment: .bottom) {
          DottedLine()
                .stroke(style: StrokeStyle(lineWidth: 0.2, dash: [3]))
                  .frame(width: 2, height: 152.04)
                  .foregroundColor(.color("10275A"))
          Circle().frame(width: width).padding(.bottom, padding).foregroundColor(color)
          Circle().frame(width: width2).padding(.bottom, padding2).foregroundColor(color2)
          Circle().frame(width: width3).padding(.bottom, padding3).foregroundColor(color3)
            
        }.frame(minWidth: 0, maxWidth: .infinity)
        
    }
}
struct Priority: View {
  var body: some View {
    VStack(spacing: 0){
      HStack(spacing: 0) {
        VStack{
          Text("10")
          Spacer()
          Text("08")
          Spacer()
          Text("06")
          Spacer()
          Text("04")
          Spacer()
          Text("02")
        } .font(.system(size: 12, weight: .medium, design: .default))
          .foregroundColor(.color("10275A"))
        .frame(height: 150)
        .padding(.bottom,2.52)
        .padding(.trailing, 20)
        HStack(){
          
          PriorityGraph(padding: 36.52, width: 14, color: .color("8F99EB"), padding2: 106.52, width2: 10, color2: .color("E88B8C"), padding3: 0, width3: 0, color3: .clear)
          
          PriorityGraph(padding: 3.52, width: 12, color: .color("7EC8E7"), padding2: 69.52, width2: 16, color2: .color("E88B8C"), padding3: 139.52, width3: 14, color3: .color("8F99EB"))
          PriorityGraph(padding: 72.52, width: 10, color: .color("8F99EB"), padding2: 104.52, width2: 14, color2: .color("E88B8C"), padding3: 0, width3: 0, color3: .color("8F99EB"))
          PriorityGraph(padding: 2.52, width: 14, color: .color("8F99EB"), padding2: 38.52, width2: 10, color2: .color("E88B8C"), padding3: 138.52, width3: 16, color3: .color("7EC8E7"))
          PriorityGraph(padding: 2.52, width: 14, color: .color("7EC8E7"), padding2: 72.52, width2: 10, color2: .color("E88B8C"), padding3: 106.52, width3: 10, color3: .color("8F99EB"))
          PriorityGraph(padding: 34.52, width: 16, color: .color("7EC8E7"), padding2: 141.52, width2: 10, color2: .color("E88B8C"), padding3: 0, width3: 0, color3: .color("8F99EB"))
          PriorityGraph(padding: 71.52, width: 10, color: .color("8F99EB"), padding2: 102.52, width2: 16, color2: .color("E88B8C"), padding3: 0, width3: 0, color3: .clear)
        }//.padding(.horizontal, 20)
      }
      
      HStack(spacing: 0) {
        VStack { Text("Mo") }.frame(minWidth: 0, maxWidth: .infinity)
        VStack { Text("Tu") }.frame(minWidth: 0, maxWidth: .infinity)
        VStack { Text("We") }.frame(minWidth: 0, maxWidth: .infinity)
        VStack { Text("Th") }.frame(minWidth: 0, maxWidth: .infinity)
        VStack { Text("Fr") }.frame(minWidth: 0, maxWidth: .infinity)
        VStack { Text("Sa") }.frame(minWidth: 0, maxWidth: .infinity)
        VStack { Text("Su") }.frame(minWidth: 0, maxWidth: .infinity)
      }
        .font(.system(size: 12, weight: .medium, design: .default))
        .foregroundColor(.color("10275A"))
        
        .padding(.leading, 34)
        .padding(.top, 16.48)
      
    }
  }
}

struct Graphic: View {
  var body: some View {
    ZStack{
      ScrollView{
        VStack(spacing: 0){
          VStack{
            Text("Graphic")
              .font(.system(size: 18, weight: .medium, design: .default))
              .foregroundColor(.color("10275A"))
          }
          VStack(alignment: .leading, spacing: 0){
            HStack(alignment: .firstTextBaseline, spacing: 5){
              Text("Priority")
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundColor(.color("10275A"))
              Spacer()
              Circle().frame(width: 8).foregroundColor(.color("E88B8C"))
              Text("Personal")
                .font(.system(size: 12, weight: .medium, design: .default))
                .foregroundColor(.color("10275A"))
              Circle().frame(width: 8).foregroundColor(.color("8F99EB"))
              Text("Private")
                .font(.system(size: 12, weight: .medium, design: .default))
                .foregroundColor(.color("10275A"))
              Circle().frame(width: 8).foregroundColor(.color("7EC8E7"))
              Text("Secret")
                .font(.system(size: 12, weight: .medium, design: .default))
                .foregroundColor(.color("10275A"))
            }
            
            Text("Task Perday")
              .font(.system(size: 14, weight: .medium, design: .default))
              .foregroundColor(.color("8586A9"))
              .padding(.top, 12)
              .padding(.bottom, 26)
            Priority()
            
          }.padding(.leading, 15)
            .padding(.trailing, 10)
            .padding(.top, 14)
            .padding(.bottom, 16)
            .background(.color("F9FAFD") , in: RoundedRectangle(cornerRadius: 16))
            .padding(.top, 38)
            .padding(.bottom, 23)
          HStack{
            Text("Your activity")
              .font(.system(size: 20, weight: .medium, design: .default))
              .foregroundColor(.color("10275A"))
            Spacer()
          }
            
            VStack(spacing: 31){
              HStack{
                Image("Image 16")
                Spacer()
                Text("April 2021")
                  .font(.system(size: 20, weight: .medium, design: .default))
                  .foregroundColor(.color("10275A"))
                Spacer()
                Image("Image 17")
              }.padding(.horizontal, 43)
              HStack(spacing: 17){
                Activity(height: 8, color: .color("E88B8C"))
                Activity(height: 16, color: .color("7EC8E7"))
                Activity(height: 27, color: .color("7EC8E7"))
                Activity(height: 20, color: .color("E88B8C"))
                Activity(height: 44, color: .color("E88B8C"))
                Activity(height: 35, color: .color("7EC8E7"))
                Activity(height: 27, color: .color("E88B8C"))
                Activity(height: 56, color: .color("7EC8E7"))
                Activity(height: 39, color: .color("E88B8C"))
                Activity(height: 27, color: .color("E88B8C"))
              }.padding(.horizontal, 41)
              
            }.padding(.top, 28).padding(.bottom, 42).background(.color("F9FAFD") , in: RoundedRectangle(cornerRadius: 16))
            .padding(.top, 23)
          
         
          
         
         
          
          
          
          
          
          
          
          
          
          
          }.padding(.horizontal,24)
        }.background(.white).safeAreaInset(edge: .bottom) {
          TabDailoz(isSelectedHome: false, isSelectedTask: false, isSelectedGraphic: true, isSelectedProfile: false)}
      }
      

    
  }
}

struct Graphic_Previews: PreviewProvider {
  static var previews: some View {
    Graphic()
    
  }
}

struct DottedLine: Shape {
        
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: rect.height))
        return path
    }
}

struct Activity: View {
  var height: Double
  var color: Color
  var body: some View {
    VStack(spacing: 2){
      ZStack(alignment: .bottom){
        RoundedRectangle(cornerRadius: 10).frame(width: 8, height: 91).foregroundColor(.color("F0F3FA"))
        RoundedRectangle(cornerRadius: 10).frame(width: 8, height: height) .foregroundColor(color)
        
      }
      RoundedRectangle(cornerRadius: 10).frame(width: 8, height: 91).foregroundColor(.color("8F99EB"))
    }
  }
}


