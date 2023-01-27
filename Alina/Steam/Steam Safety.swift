

import SwiftUI

struct SteamSafetyView: View {
    var body: some View {
        ZStack {
            Background()
            ScrollView {
                ZStack{
                    VStack(alignment: .leading, spacing: 0) {
                        HStack (alignment: .center){
                            Image("SteamLogo")
                                .resizable().frame(width: 36, height: 36)
                            Text("Steam Safety").foregroundColor(.color("D8D8D8")).font(.system(size: 28, weight: .regular, design: .default))
                            Spacer()
                        }
                        PickerRectangle().padding(.bottom, 55).padding(.top, 18)
                        VStack(spacing: 0) {
                            Text("Logged in as **flajokmail**")
                                .font(.system(size: 14, weight: .regular, design: .none))
                                .foregroundColor(.color("7B8D9D"))
                            Text("N5KCV")
                                .font(.system(size: 54, weight: .semibold, design: .none))
                                .foregroundColor(.white)
                                .padding(.top, 4)
                                .padding(.bottom, 12)
                            ZStack(alignment: .leading){
                                RoundedRectangle(cornerRadius: 3.5).foregroundColor(.color("1C202C")).frame(width: 157,height: 7)
                                RoundedRectangle(cornerRadius: 3.5).foregroundColor(.color("31BCFC")).frame(width: 114,height: 7)
                            }
                        }.frame(maxWidth: .infinity)
                        VStack(alignment: .leading, spacing: 14) {
                            Text("You'll enter your code each time you enter your password to sign in to your Steam account.")
                                .baselineOffset(6)
                                .font(.system(size: 14, weight: .regular, design: .default))
                                .foregroundColor(.white)
                            Text("Tip: If you don't share your PC, you can select \"Remember my password\" when you sign in to the PC client to enter your password and authenticator code less often.")
                                .baselineOffset(6)
                                .font(.system(size: 14, weight: .regular, design: .default))
                                .foregroundColor(.color("2FB4F1"))
                        }.padding(.bottom, 24)
                            .padding(.top, 46)
                        VStack(spacing: 0) {
                            LinesView(name: "Remove Authenticator")
                            LinesView(name: "My Recovery Code")
                            LinesView(name: "Help")
                        }.padding(.vertical, 5).background(RoundedRectangle(cornerRadius: 8))
                            .foregroundColor(.color("202532"))
                        
                    }.padding(.top, 21).padding(.horizontal,20)
                    
                }
                
            }
        }.background(.color("1C202C"))
    }
}

struct SteamSafety_Previews: PreviewProvider {
    static var previews: some View {
        SteamSafetyView()
    }
}

struct Pickeer: View {
    @State private var selection = 0
    var body: some View {
        VStack {
            Picker("Guard or Confirmations", selection: $selection) {
                Text("Steam Guard").tag(0)
                Text("Confirmations").tag(1)
            }
            .pickerStyle(.segmented)
            .tint(.yellow)
        }
    }
}

struct LinesView: View {
    var name: String
    var body: some View {
        HStack{
            Text(name)
                .font(.system(size: 16, weight: .semibold, design: .default))
                .foregroundColor(.white)
            
            Spacer()
            Image("Chevron")
        }.padding(.vertical, 20).padding(.leading, 18).padding(.trailing, 20) .frame(height: 55)
            .overlay(
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.color("1C202C")),
                alignment: .bottom)
    }
}

