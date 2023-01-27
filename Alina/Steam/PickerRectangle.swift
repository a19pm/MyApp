//
//  PickerRectangle.swift
//  Alina
//
//  Created by Dmitry on 16/12/2022.
//

import SwiftUI

struct PickerRectangle: View {
    @State private var selection = 0
    
    var items = ["Steam Guard", "Confirmations"]
    var offset: CGFloat = 0
    var gesture: DragGesture!
 
    
    var body: some View {
        VStack {
            ZStack {
                GeometryReader { proxy in
                    RoundedRectangle(cornerRadius: 6)
                        .foregroundColor(.color("1C202C"))
                        .frame(width: proxy.size.width / CGFloat(items.count) - 4, height: proxy.size.height - 4)
                        .offset(x: proxy.size.width / CGFloat(items.count) * CGFloat(selection))
                        .padding(2)
                    HStack(spacing: 0) {
                        ForEach(Array(items.enumerated()), id: \.offset) { (index, item) in
                            ZStack {
                                Button {
                                    withAnimation(.spring(response: 0.4)) {
                                        selection = index
                                    }
                                } label: {
                                    Text("\(item)")
                                        .font(.system(size: 14, weight: .semibold, design: .rounded))
                                        .foregroundColor(index == selection ? .white : .color("7B8D9D"))
                                }
                            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                                .padding(2)
                        }
                    }
                }.frame(height: 34).frame(maxWidth: .infinity)
                    .background(.color("303649"))
                    .cornerRadius(7)
                   // .padding(.horizontal)
            }.gesture(gesture)
            
           
            
        }
    }
}


struct PickerRectangle_Previews: PreviewProvider {
    static var previews: some View {
        PickerRectangle()
    }
}

struct PickerRectangle2: View {
    @State private var selection = 0
    
    var items = ["Open chats", "My friends"]
    var offset: CGFloat = 0
    var gesture: DragGesture!
 
    
    var body: some View {
        VStack {
            ZStack {
                GeometryReader { proxy in
                    RoundedRectangle(cornerRadius: 6)
                        .foregroundColor(.color("1C202C"))
                        .frame(width: proxy.size.width / CGFloat(items.count) - 4, height: proxy.size.height - 4)
                        .offset(x: proxy.size.width / CGFloat(items.count) * CGFloat(selection))
                        .padding(2)
                    HStack(spacing: 0) {
                        ForEach(Array(items.enumerated()), id: \.offset) { (index, item) in
                            ZStack {
                                Button {
                                    withAnimation(.spring(response: 0.4)) {
                                        selection = index
                                    }
                                } label: {
                                    Text("\(item)")
                                        .font(.system(size: 14, weight: .semibold, design: .rounded))
                                        .foregroundColor(index == selection ? .white : .color("7B8D9D"))
                                }
                            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                                .padding(2)
                        }
                    }.frame(height: 34).frame(maxWidth: .infinity)
                }.frame(height: 34).frame(maxWidth: .infinity)
                    .background(.color("303649"))
                    .cornerRadius(7)
                   // .padding(.horizontal)
            }.gesture(gesture)
            
           
            
        }
    }
}
struct Pickerrecta_Previews: PreviewProvider {
    static var previews: some View {
       PickerRectangle2()
    }
}
