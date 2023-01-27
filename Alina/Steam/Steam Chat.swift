//
//  Steam Chat.swift
//  Alina
//
//  Created by Dmitry on 20/12/2022.
//

import SwiftUI

struct SteamChaat: View {
    var body: some View {
        ZStack {
        
        ScrollView{
            ZStack{
                VStack(alignment: .leading, spacing: 0) {
                    HStack (alignment: .center, spacing: 6){
                        Image("SteamLogo")
                            .resizable().frame(width: 36, height: 36)
                        Text("Steam Chat")
                            .foregroundColor(.color("D8D8D8"))
                            .font(.system(size: 28, weight: .regular, design: .default))
                        Spacer()
                        Image("Search2")
                            .resizable()
                            .frame(width: 16, height: 16)
                            .padding(.trailing,8)
                    }
                    PickerRectangle2().padding(.bottom, 12).padding(.top, 18)
                    VStack(spacing: 0) {
                        ChatView(image: "1", onlinegreen: true, onlineblue: false, name: "Mark Dyson", message: "I'm already starting to play • 14 Jun", you: false, message1: true, point: false)
                        ChatView(image: "2", onlinegreen: true, onlineblue: false, name: "Mark Dyson", message: "Cyka blyat’  • 14 Jun", you: true, message1: false, point: true)
                        ChatView(image: "3", onlinegreen: false, onlineblue: true, name: "Ruster Xoomer", message: "Ok  • 14 Jun", you: true, message1: false, point: true)
                        ChatView(image: "4", onlinegreen: false, onlineblue: true, name: "森派", message: "Погнали в контру!", you: false, message1: false, point: false)
                        ChatView(image: "5", onlinegreen: false, onlineblue: false, name: "Player", message: "Hello Man! • 12 Jun", you: false, message1: false, point: false)
                        ChatView(image: "6", onlinegreen: false, onlineblue: false, name: "DENTIK", message: "Come on, start streamin… • 11 Jun", you: true, message1: false, point: false)
                        ChatView(image: "7", onlinegreen: false, onlineblue: false, name: "Jägermeister", message: "No", you: false, message1: false, point: false)
                        ChatView(image: "8", onlinegreen: false, onlineblue: false, name: "💎ϟ∑χρŗêssσϟ#=_-#", message: "Ok", you: false, message1: false, point: false)
                    }
                    
                }.padding(.top, 21).padding(.horizontal,20)
                
            }
                
            }
        }.background(.color("1C202C")).safeAreaInset(edge: .bottom) {
            TabBar3()}
    }
}

struct SteamChaat_Previews: PreviewProvider {
    static var previews: some View {
        SteamChaat()
    }
}
struct ChatView: View {
    var image: String
    var onlinegreen: Bool
    var onlineblue: Bool
    var name: String
    var message: String
    var you: Bool
    var message1: Bool
    var point: Bool
    var body: some View {
        HStack(spacing: 0) {
            ZStack(alignment: .bottomTrailing) {
                Image(image)
                    .resizable().frame(width: 52, height: 52)
                if onlinegreen {
                    Circle().frame(width: 14).foregroundColor(.color("00D44B")).overlay(Circle().stroke(Color.color("1C202C"), lineWidth: 2))
                    
                }
                if onlineblue {
                    Circle().frame(width: 14).foregroundColor(.color("31BCFC")).overlay(Circle().stroke(Color.color("1C202C"), lineWidth: 2))
                }
            }.padding(.trailing, 14)
            VStack(alignment: .leading, spacing: 4) {
                Text(name)
                    .foregroundColor(.white)
                    .font(.system(size: 16, weight: .semibold, design: .default))
                HStack(spacing: 3) {
                    if you {
                        Text("You:")
                            .foregroundColor(.white)
                            .font(.system(size: 14, weight: .medium, design: .default))
                    }
                    Text(message)
                        .foregroundColor(.color("7B8D9D"))
                        .font(.system(size: 14, weight: .regular, design: .default))
                }
                
            }
            Spacer()
            if message1 {
                Text("1")
                    .foregroundColor(.black).font(.system(size: 12, weight: .bold, design: .default))
                    .padding(3)
                    .frame(width: 20, height: 20)
                    .background(.color("31BCFC"), in: Circle())
            }
            if point {
                Circle().frame(width: 8).foregroundColor(.white)
                    .padding(.trailing,6)
            }
            
        }.padding(.vertical, 10)//.background(.color("1C202C"))
        
    }
}
struct pr_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(image: "1", onlinegreen: true, onlineblue: false, name: "Mark Dyson", message: "I'm already starting to play • 14 Jun", you: false, message1: true, point: false)
    }
}
