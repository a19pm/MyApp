//
//  Spalsh.swift
//  Alina
//
//  Created by Dmitry on 22/12/2022.
//

import SwiftUI

struct DailozSplash: View {
  @State var login = false
  @State var signUp = false
  var body: some View {
    ZStack {
      VStack(alignment: .center, spacing: 0) {
        Spacer()
        Image("Image").resizable().frame(width: 291, height: 294)
          .padding(.bottom, 76)
          .padding(.top, 8)
        Text("Dailoz")
          .font(.system(size: 32, weight: .medium, design: .default)).foregroundColor(.color("5B67CA"))

        Text("Plan what you will do to be more organized for today, tomorrow and beyond")
          .font(.system(size: 14, weight: .medium, design: .default)).foregroundColor(.color("2C406E")).multilineTextAlignment(.center)
          .padding(.bottom, 66)
          .padding(.top, 28)
        Button {
          login.toggle()
        } label: {
          Text("Login")
            .font(.system(size: 16, weight: .medium, design: .default)).foregroundColor(.white)
            .padding(.vertical, 17.5)
            .frame(maxWidth: .infinity)
            .background(.color("5B67CA"))
            .cornerRadius(14)
            .padding(.horizontal, 10)
        }
        Button {
          signUp.toggle()
        } label: {
          Text("Sign Up")
            .font(.system(size: 16, weight: .medium, design: .default)).foregroundColor(.color("5B67CA"))
            .padding(.bottom, 56 - 34)
            .padding(.top, 23)
        }
      }.padding(.horizontal, 26)
      if self.login {
        // Spacer()
        GeometryReader { _ in
          Login()
        }.frame(maxWidth: .infinity)
          // .frame(alignment: .trailing)
//        .padding(.leading, 206)
//          .padding(.top, 76)
          .background {
            Color.black.opacity(0)
              .edgesIgnoringSafeArea(.all)
              .onTapGesture {
                // withAnimation {
                self.login.toggle()
                // }
              }
          }
      }
      if self.signUp {
        // Spacer()
        GeometryReader { _ in
          SingUP()
        }.frame(maxWidth: .infinity)
          // .frame(alignment: .trailing)
//        .padding(.leading, 206)
//          .padding(.top, 76)
          .background {
            Color.black.opacity(0)
              .edgesIgnoringSafeArea(.all)
              .onTapGesture {
                // withAnimation {
                self.signUp.toggle()
                // }
              }
          }
      }
    }
  }
}

struct DailozSplash_Previews: PreviewProvider {
  static var previews: some View {
    DailozSplash()
  }
}

struct Login: View {
  @State var signUp = false
  var body: some View {
    ZStack {
      VStack(alignment: .leading, spacing: 0) {
        VStack {
          Spacer()
          Text("Login")
            .font(.system(size: 36, weight: .medium, design: .default)).foregroundColor(.color("5B67CA"))
        }

        HStack(spacing: 13) {
          Image("Image 1")
          Text("Email ID or Username")
            .font(.system(size: 16, weight: .medium, design: .default)).foregroundColor(.color("C6CEDD"))
        }.padding(.bottom, 16)
          .padding(.top, 87)
        Rectangle()
          .frame(height: 2)
          .foregroundColor(.color("F1F3F8"))

        HStack(spacing: 13) {
          Image("Image 2")
          Text("Password")
            .font(.system(size: 16, weight: .medium, design: .default)).foregroundColor(.color("C6CEDD"))
          Spacer()
          Image("Image 3")
        }.padding(.bottom, 14)
          .padding(.top, 32)
        Rectangle()
          .frame(height: 2)
          .foregroundColor(.color("F1F3F8"))
        HStack {
          Spacer()
          Text("Forgot Password ?")
            .font(.system(size: 12, weight: .medium, design: .default)).foregroundColor(.color("5B67CA"))
            .padding(.horizontal, -10)

        }.padding(.bottom, 56)
          .padding(.top, 14)
        Text("Login")
          .font(.system(size: 16, weight: .medium, design: .default)).foregroundColor(.white)
          .padding(.vertical, 17.5)
          .frame(maxWidth: .infinity)
          .background(.color("5B67CA"))
          .cornerRadius(14)
          .padding(.horizontal, 10)
        HStack {
          Rectangle()
            .frame(height: 1)
            .foregroundColor(.color("F1F3F8"))
          Text("or with")
            .font(.system(size: 12, weight: .medium, design: .default)).foregroundColor(.color("C6CEDD"))
            .padding(.trailing, 21.35).padding(.leading, 22.35)
          Rectangle()
            .frame(height: 1)
            .foregroundColor(.color("F1F3F8"))
        }.padding(.bottom, 31)
          .padding(.top, 54)
        HStack {
          Spacer()
          Image("Image 4")
          Image("Image 5")
          Spacer()
        }

        VStack(alignment: .center) {
          Spacer()
          Button {
            signUp.toggle()
          } label: {
            Text("Don't have an account? Sign Up")
              .font(.system(size: 14, weight: .medium, design: .default)).foregroundColor(.color("2C406E"))
          }

        }.frame(maxWidth: .infinity).padding(.bottom, 45 - 34)

      }.padding(.horizontal, 35.5)
        .background(.white)
      if self.signUp {
        // Spacer()
        GeometryReader { _ in
          SingUP()
        }.frame(maxWidth: .infinity)
          // .frame(alignment: .trailing)
          //        .padding(.leading, 206)
          //          .padding(.top, 76)
          .background {
            Color.black.opacity(0)
              .edgesIgnoringSafeArea(.all)
              .onTapGesture {
                // withAnimation {
                self.signUp.toggle()
                // }
              }
          }
      }
    }
  }
}

struct Login_Previews: PreviewProvider {
  static var previews: some View {
    Login()
  }
}

struct SingUP: View {
  @State var login = false
  var body: some View {
    ZStack {
      VStack(alignment: .leading, spacing: 0) {
        VStack {
          Spacer()
          Text("Sign Up")
            .font(.system(size: 36, weight: .medium, design: .default)).foregroundColor(.color("5B67CA"))
        }
        HStack(spacing: 15.5) {
          Image("Image 1")
          Text("Username")
            .font(.system(size: 16, weight: .medium, design: .default)).foregroundColor(.color("C6CEDD"))
        }.padding(.bottom, 16)
          .padding(.top, 79)
        HStack {
          Rectangle()
            .frame(height: 2)
            .foregroundColor(.color("F1F3F8"))
        }

        HStack(spacing: 17.43) {
          Image("Image 2")
          Text("Email ID")
            .font(.system(size: 16, weight: .medium, design: .default)).foregroundColor(.color("C6CEDD"))
        }.padding(.bottom, 16)
          .padding(.top, 32)
        HStack {
          Rectangle()
            .frame(height: 2)
            .foregroundColor(.color("F1F3F8"))
        }

        VStack(spacing: 0) {
          HStack(spacing: 17.43) {
            Image("Image 2")
            Text("Password")
              .font(.system(size: 16, weight: .medium, design: .default)).foregroundColor(.color("C6CEDD"))
            Spacer()

          }.padding(.bottom, 16)

          Rectangle()
            .frame(height: 2)
            .foregroundColor(.color("F1F3F8"))

        }.padding(.top, 32)

        Text("Create")
          .font(.system(size: 16, weight: .medium, design: .default)).foregroundColor(.white)
          .frame(height: 52)
          .frame(maxWidth: .infinity)
          .background(.color("5B67CA"))
          .cornerRadius(14)
          .padding(.horizontal, 10)
          .padding(.top, 55)
        HStack {
          Rectangle()
            .frame(height: 1)
            .foregroundColor(.color("F1F3F8"))
          Text("or with")
            .font(.system(size: 12, weight: .medium, design: .default)).foregroundColor(.color("C6CEDD"))
            .padding(.trailing, 21.35).padding(.leading, 22.35)
          Rectangle()
            .frame(height: 1)
            .foregroundColor(.color("F1F3F8"))
        }.padding(.bottom, 31)
          .padding(.top, 54)
        HStack {
          Spacer()
          Image("Image 4")
          Image("Image 5")
          Spacer()
        }

        VStack {
          Spacer()
          HStack {
            Spacer()
            Button {
              login.toggle()
            } label: {
              Text("Have any account? Sign In")
                .font(.system(size: 14, weight: .medium, design: .default)).foregroundColor(.color("2C406E"))
            }
            Spacer()
          }

        }.padding(.bottom, 45)
          .padding(.top, 94)

      }.padding(.horizontal, 35.5)
        .background(.white)
      if self.login {
        // Spacer()
        GeometryReader { _ in
          Login()
        }.frame(maxWidth: .infinity)
          // .frame(alignment: .trailing)
//        .padding(.leading, 206)
//          .padding(.top, 76)
          .background {
            Color.black.opacity(0)
              .edgesIgnoringSafeArea(.all)
              .onTapGesture {
                // withAnimation {
                self.login.toggle()
                // }
              }
          }
      }
    }
  }
}

struct SignUP_Previews: PreviewProvider {
  static var previews: some View {
    SingUP()
  }
}
