//
//  Contacts.swift
//  Alina
//
//  Created by Dmitry on 15/12/2022.
//

import SwiftUI

struct Contacts: View {
    @State private var username: String = ""
    var body: some View {
        ZStack(alignment: .trailing){
            ScrollView {
                VStack (spacing: 15){
                    HStack(spacing: 9) {
                        HStack {
                            Image("Search").padding(.trailing,15).padding(.leading, 13)
                            TextField("Search", text: $username)
                                .textInputAutocapitalization(.never)
                                .disableAutocorrection(true)
                        }.padding(.bottom,13)
                            .padding(.top, 10)
                            .background(RoundedRectangle(cornerRadius: 21))
                            .foregroundColor(.color("F2F1F6"))
                            .frame(height: 42, alignment: .leading)
                        Image("addbutton")
                        Image("point")
                    }
                    HStack {
                        Image("Hugo").resizable()
                            .frame(width: 58, height: 58)
                            .scaledToFill()
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                            .overlay(Circle().stroke(Color.color("34C759"), lineWidth: 1)).padding(.top, 2)
                        VStack(alignment: .leading, spacing: 3){
                            Text("Hugo Verweij")
                                .font(.system(size: 28, weight: .semibold, design: .rounded))
                                .foregroundColor(.black)
                            HStack(){
                                Text("1109 contacts")
                                    .font(.system(size: 16, weight: .regular, design: .rounded))
                                    .foregroundColor(.black)
                                    .opacity(0.5)
                                Image("Oval")
                                Text("34 active")
                                    .font(.system(size: 16, weight: .regular, design: .rounded))
                                    .foregroundColor(.color("34C759"))
                                    .opacity(0.75)
                            }
                        }.padding(.leading, 13)
                        Spacer()
                        Image("Rectangle")
                        
                    }
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 12) {
                            ContactCard(photo: "001", name: "Jenifer Johns", isIconTel: true, isIconCam: true, isIconMess: true)
                            ContactCard(photo: "002", name: "Dean Orlosky", isIconTel: true, isIconCam: true, isIconMess: false)
                            ContactCard(photo: "002", name: "Charles Parris", isIconTel: true, isIconCam: true, isIconMess: true)
                            ContactCard(photo: "003", name: "Dmitry Kozlov", isIconTel: true, isIconCam: true, isIconMess: true)
                        }
                    }
                    
                    Letter(letter: "A")
                    VStack(spacing: 0) {
                        ContactLine(photo: "005", name: "Andrew Black", isIconTel: true, isIconCam: true, isIconMess: true)
                        
                        ContactLine(photo: "006", name: "Anna Aderson", isIconTel: true, isIconCam: true, isIconMess: false)
                    }.background(RoundedRectangle(cornerRadius: 21))
                        .foregroundColor(.color("F2F1F6"))
                    Letter(letter: "B")
                    VStack(spacing: 0) {
                        ContactLine(photo: "007", name: "Broke Brown", isIconTel: true, isIconCam: true, isIconMess: true)
                        
                        ContactLine(photo: "008", name: "Bella Smith", isIconTel: true, isIconCam: false, isIconMess: false)
                        
                        ContactLine(photo: "009", name: "Ben Williams", isIconTel: false, isIconCam: false, isIconMess: true)
                        
                        ContactLine(photo: "010", name: "Ector Sanchez", isIconTel: true, isIconCam: false, isIconMess: true)
                    }.background(RoundedRectangle(cornerRadius: 21))
                        .foregroundColor(.color("F2F1F6"))
                    Letter(letter: "C")
                    VStack(spacing: 0) {
                        
                        ContactLine(photo: "011", name: "Candace Salinas", isIconTel: true, isIconCam: true, isIconMess: true)
                        
                        ContactLine(photo: "012", name: "Charles Parrish", isIconTel: true, isIconCam: true, isIconMess: false)
                        
                        ContactLine(photo: "012", name: "Charles Parrish", isIconTel: true, isIconCam: true, isIconMess: false)
                    }.background(RoundedRectangle(cornerRadius: 21))
                        .foregroundColor(.color("F2F1F6"))
                }.padding(.horizontal, 30).padding(.top, 5)
            }
            Text("A \nB \nC \nD \nE \nF \nG \nH \nI \nJ \nK \nL \nM \nN \nO \nP \nR \nS \nT \nU \nV \nW \nY \nZ \n#").font(.system(size: 15, weight: .medium, design: .rounded))
                .foregroundColor(.color("878B95")).padding(.top, 274).padding(.trailing, 7)
            
        }
    }
    
    
    struct Contacts_Previews: PreviewProvider {
        static var previews: some View {
            Contacts()
        }
    }
}
struct ContactCard: View {
    var photo: String
    var name: String
    var isIconTel: Bool
    var isIconCam: Bool
    var isIconMess: Bool
    var body: some View {
        VStack(alignment: .leading) {
            Image(photo)
                .resizable()
                .frame(width: 40, height: 40, alignment: .leading)
                .scaledToFill()
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .overlay(Circle().stroke( lineWidth: 1))
            
            Text(name).font(.system(size: 14, weight: .medium, design: .rounded)).foregroundColor(.black)
            
            HStack {
                if isIconTel {
                    Image("phone")
                }
                if isIconCam {
                    Image("video")
                }
                if isIconMess {
                    Image("mail")
                }
            }
            
            
        }.padding(.vertical, 15)
            .padding(.horizontal, 12)
            .frame(width: 110, height: 120)
            .background(.color("F2F1F6"))
            .cornerRadius(15)
        
    }
}

struct Letter: View {
    var letter: String
    var body: some View {
        HStack {
            Text(letter).font(.system(size: 18, weight: .semibold, design: .rounded)).foregroundColor(.color("878B95"))
            Spacer()
        }.padding(.top, 1)
            .padding(.bottom, 3)
            .padding(.leading, 15)
            .background(RoundedRectangle(cornerRadius: 21))
            .foregroundColor(.color("F2F1F6"))
    }
}

struct ContactLine: View {
    var photo: String
    var name: String
    var isIconTel: Bool
    var isIconCam: Bool
    var isIconMess: Bool
    var body: some View {
        HStack(spacing: 0) {
            Image(photo).resizable()
                .frame(width: 25, height: 25)
                .scaledToFill()
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .overlay(Circle().stroke( lineWidth: 1))
            Text(name)
                .font(.system(size: 18, weight: .regular, design: .rounded))
                .foregroundColor(.black)
                .padding(.leading, 15)
            Spacer()
            HStack(spacing: 5) {
                if isIconTel {
                    Image("phone")
                }
                
                if isIconCam {
                    Image("video")
                }
                
                if isIconMess {
                    Image("mail")
                }
            }
        }
            .padding(.horizontal,25)
            .frame(height: 55)
            .overlay(
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.white),
            alignment: .bottom)
    }
}



