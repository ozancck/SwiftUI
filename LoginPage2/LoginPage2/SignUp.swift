//
//  SignUp.swift
//  LoginPage2
//
//  Created by Ozan Çiçek on 3.03.2023.
//

import SwiftUI

struct SignUp: View {
    @State var color = Color.black.opacity(0.7)
    @State var email = ""
    @State var pass = ""
    @State var repass = ""
    @State var visible = false
    @State var revisible = false
    @Binding var show : Bool

    var body: some View {
        ZStack(alignment: .topLeading) {
            GeometryReader { _ in
                VStack {
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width * 0.5, height: UIScreen.main.bounds.height * 0.2, alignment: .center)

                    Text("Log in to your account")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(self.color)
                        .padding(.top, 35)

                    TextField("Email", text: self.$email)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 4).stroke(self.email != "" ? Color("Color") : self.color, lineWidth: 2))
                        .padding(.top, 25)

                    HStack(spacing: 15) {
                        VStack {
                            if self.visible {
                                TextField("Password", text: self.$pass)
                            } else {
                                SecureField("Password", text: self.$pass)
                            }
                        }

                        Button(action: {
                            self.visible.toggle()
                        }) {
                            Image(systemName: self.visible ? "eye.slash.fill" : "eye.fill")
                                .foregroundColor(self.color)
                        }
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 4).stroke(self.pass != "" ? Color("Color") : self.color, lineWidth: 2))
                    .padding(.top, 25)

                    HStack(spacing: 15) {
                        VStack {
                            if self.revisible {
                                TextField("Re-enter", text: self.$repass)
                            } else {
                                SecureField("Re-enter", text: self.$repass)
                            }
                        }

                        Button(action: {
                            self.revisible.toggle()
                        }) {
                            Image(systemName: self.revisible ? "eye.slash.fill" : "eye.fill")
                                .foregroundColor(self.color)
                        }
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 4).stroke(self.repass != "" ? Color("Color") : self.color, lineWidth: 2))
                    .padding(.top, 25)

                    Button {
                    } label: {
                        Text("Register")
                            .foregroundColor(.white)
                            .padding(.vertical)
                            .frame(width: UIScreen.main.bounds.width - 50)
                    }
                    .background(Color("Color"))
                    .cornerRadius(10)
                    .padding(.top, 25)
                }
                .padding(.horizontal, 25)
            }

            Button {
                
                self.show.toggle()
            } label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(Color("Color"))
            }
            .padding()
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp(show: .constant(false))
    }
}
