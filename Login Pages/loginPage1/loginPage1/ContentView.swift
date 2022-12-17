//
//  ContentView.swift
//  loginPage1
//
//  Created by Ozan Çiçek on 17.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUserName = 0
    @State private var wrongPassword = 0
    
    var body: some View {
        NavigationView () {
            ZStack {
                Color(.red)
                    .ignoresSafeArea()
                Rectangle()
                    .scale(0.8)
                    .frame( width: UIScreen.main.bounds.width * 2 ,height: UIScreen.main.bounds.height * 0.8)
                    .foregroundColor(.white.opacity(0.7))
                    .rotationEffect(.degrees(60))
                
                Rectangle()
                    .scale(0.7)
                    .frame( width: UIScreen.main.bounds.width * 2 ,height: UIScreen.main.bounds.height * 0.8)
                    .foregroundColor(.white)
                    .rotationEffect(.degrees(45))
                
                
                VStack {
                    Text("Login")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    
                    TextField("UserName", text: $username)
                        .padding()
                        .frame(width: UIScreen.main.bounds.width * 0.8 , height: UIScreen.main.bounds.height * 0.06)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUserName))
                    
                    TextField("Password", text: $password)
                        .padding()
                        .frame(width: UIScreen.main.bounds.width * 0.8 , height: UIScreen.main.bounds.height * 0.06)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))

                    Button("Login") {
                        
                    }
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.06)
                    .background(Color.red)
                    .cornerRadius(10)

                    
                    
                    
                    
                }
            }
            
            .toolbar(.hidden, for: .tabBar)
            
            
        }
       
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
