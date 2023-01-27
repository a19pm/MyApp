//
//  ContentView.swift
//  Alina
//
//  Created by Dmitry on 01/11/2022.
//

import SwiftUI

struct ContentView2: View {
    @State var selection = 0
    init() {
              UITabBarItem.appearance().badgeColor = .purple   // << here !!
          }

    var body: some View {
      
        TabView(selection: $selection) {
            Group {
                SteamSafetyView()
                
                    .tabItem {
                        if selection == 0 {
                            Image("11")
                            
                        } else {
                            Image("10")
                        }
                    }.tag(0)
                Contacts()
                    .tabItem {
                        if selection == 1 {
                            Image("21")
                            
                        } else {
                            Image("20")
                        }
                    }.tag(1)
                GoodMorningJenny()
                   
                    .tabItem {
                        if selection == 1 {
                            Image("badge")
                            
                        }
                        if selection == 2 {
                            Image("31")
                            
                        } else {
                            Image("30")
                        }
                        
                    }.tag(2) //.badge("")
                BigSave()
                //.badge("!")
                    .tabItem {
                        if selection == 3 {
                            Image("41")
                            
                        } else {
                            Image("40")
                        }
                        
                    }.tag(3)
                WellDone()
                //.badge("!")
                    .tabItem {
                            Image("50")
                        }.tag(4)
            } .toolbar(.visible, for: .tabBar)
                .toolbarBackground(
                    Color.black,
                    for: .tabBar)
            
        }
    }
}


struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}


