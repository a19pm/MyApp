//
//  Good Morning Jenny.swift
//  Alina
//
//  Created by Dmitry on 15/12/2022.
//

import SwiftUI

struct GoodMorningJenny: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading){
                HStack {
                    Image(systemName: "chevron.backward")
                        .font(.system(size: 25, weight: .bold, design: .default))
                        .foregroundColor(Color.red)
                    Spacer()
                }.padding()
                HStack {
                    VStack (alignment: .leading) {
                        Text("Good Morning\nJenny")
                            .font(.system(size: 40, weight: .light, design: .default))
                            .foregroundColor(.color("FF3D00"))
                            .tracking(-1.2)
                    }.padding(.vertical,-10).padding(.horizontal,10).padding(.bottom,24)
                    Spacer()
                }
                //Spacer()
                VStack{
                    HStack {
                        Image("White")
                        Text("We have nice offers for your favorite Brands")
                            .font(.system(size: 22, weight: .light, design: .default))
                            .foregroundColor(.white)
                            .padding()
                    }
                    HStack{
                        Spacer()
                        HStack {
                            Text("View")
                                .font(.system(size: 19, weight: .light, design: .default))
                                .foregroundColor(.white)
                                .padding()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.white)
                                .padding()
                        }.background(.regularMaterial, in: Rectangle())
                            .cornerRadius(24, corners: .topLeft)
                    }
                }.background(.color("FF3D00"), in: RoundedRectangle(cornerRadius: 16)).frame( height: 149)
                    .padding(.horizontal, 8)
                    .padding(.bottom,22)
                HStack{
                    
                    VStack (alignment: .leading) {
                        Text("Spending Habits")
                            .font(.system(size: 22, weight: .light, design: .default))
                            .foregroundColor(.color("746A96"))
                            .tracking(-1.2)
                    }.padding(.horizontal,10)
                    Spacer()
                }
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack{
                        SpendingHabits(iconOfHabit: "Shopping-1", nameOfHabit: "Shopping")
                        SpendingHabits(iconOfHabit: "Travel", nameOfHabit: "Travel")
                        SpendingHabits(iconOfHabit: "Heart", nameOfHabit: "Health")
                        SpendingHabits(iconOfHabit: "Food", nameOfHabit: "Food")
                        SpendingHabits(iconOfHabit: "Home", nameOfHabit: "Utility")
                    }
                    
                }
                VStack (alignment: .leading) {
                    Text("Mostly Paying with")
                        .font(.system(size: 25, weight: .light, design: .default))
                        .foregroundColor(Color.gray)
                        .tracking(-1.2)
                }.padding(.horizontal,10)
                Spacer()
                
            }
            CardView(isSelected: false, bank: "Redblue", paymentProcessor: "Mastercard", name: "Jenny Barnes", cardNumber: "5868", currency: "$", balance: "2,345", pense: "34")
            CardView(isSelected: false, bank: "Redblue", paymentProcessor: "Mastercard", name: "Jenny Barnes", cardNumber: "5868", currency: "$", balance: "2,345", pense: "34")
        }.background(.color("F5F5F5"))
    }
}

struct GoodMorningJenny_Previews: PreviewProvider {
    static var previews: some View {
        GoodMorningJenny()
    }
}
struct SpendingHabits: View {
    var iconOfHabit: String
    var nameOfHabit: String
    var body: some View {
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 16).frame(width: 64, height: 72).foregroundColor(.white)
                    .shadow(color: .color("E3E3E3"), radius: 4, x: 0, y: 2)
                Image(iconOfHabit)
            }
            
            Text(nameOfHabit).foregroundColor(.gray).tracking(-1)
        }.padding(9)
    }
}
//struct SpendingHabits_Previews: PreviewProvider {
//static var previews: some View {
//SpendingHabits()
//}
//}

