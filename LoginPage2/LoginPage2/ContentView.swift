//
//  ContentView.swift
//  LoginPage2
//
//  Created by Ozan Çiçek on 2.03.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Home : View {
    @State var show = false
    
    var body: some View {
        NavigationView{
            ZStack{
                
                NavigationLink(
                    destination: SignUp(show: self.$show),
                    isActive: self.$show){
                    Text("")
                        
                        
                }.hidden()
                
                Login(show: self.$show)
            }
            .navigationTitle("") 
            .toolbar(.hidden)
            .navigationBarBackButtonHidden(true)
            
        }
    }
}
